source 'config'

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout jupyter.pem -out jupyter.pem -subj "//C=GB\ST=London\L=London\O=Global Security\OU=IT Department\CN=example.com"

scp -i $pemfile ./jupyter.pem ubuntu@$remote_host:~

ssh -i $pemfile ubuntu@$remote_host 'bash -s' < remote_init.sh

ssh -i $pemfile ubuntu@$remote_host "mkdir -p $data_dest_path/processed"

for f_transfer in $data_transfer_list
do
    scp -i $pemfile $f_transfer ubuntu@$remote_host:$data_dest_path
done

ssh -i $pemfile ubuntu@$remote_host 'bash -s' < remote_start.sh $jupyter_password