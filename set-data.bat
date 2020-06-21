CALL ./delete-redmine-db-volume.bat
CALL ./create-redmine-db-volume.bat
CALL ./stop.bat
docker run -d -it --name=set_redmine_db_data --rm -v redmine-db-volume:/data ubuntu
docker cp ./data/ set_redmine_db_data:/
docker stop set_redmine_db_data
