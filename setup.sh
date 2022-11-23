set -euo pipefail

MAIN=$(realpath ${1})
PRG=${MAIN}/programs

mkdir -pv ${MAIN}/vbox/iso

curl --location --remote-name 'https://software.download.prss.microsoft.com/dbazure/Win10_22H2_English_x64.iso?t=a9a567c2-8002-485b-bf04-5be470d77869&e=1669272723&h=35e3c584c2bdb2f605e923dcbec62bfc3d05f8bcb412f0786aa63ae6b5b0edb4' -O ${MAIN}/vbox/iso/Win10_22H2_English_x64.iso


mkdir -pv ${PRG}

#* Arlequin: http://cmpg.unibe.ch/software/arlequin35/
mkdir -pv ${PRG}/arlequin
cd ${PRG}/arlequin

wget -O arlecore.zip http://cmpg.unibe.ch/software/arlequin35/linux/arlecore_linux.zip
unzip -o -d arlecore arlecore.zip

wget -O arlsumstat.zip http://cmpg.unibe.ch/software/arlequin35/linux/arlsumstat_linux.zip
unzip -o -d arlsumstat arlsumstat.zip

wget -O examples.zip http://cmpg.unibe.ch/software/arlequin35/linux/Example%20files_linux.zip
unzip -o -d examples examples.zip

#* Clumpp: https://rosenberglab.stanford.edu/clumpp.html
mkdir -pv ${PRG}/clumpp
cd ${PRG}/clumpp

wget https://rosenberglab.stanford.edu/software/CLUMPP_Linux64.1.1.2.tar.gz
tar -xvzf CLUMPP_Linux64.1.1.2.tar.gz
wget -P doc/ https://rosenberglab.stanford.edu/papers/clumppNote.pdf

#* Convert dropbox link: https://www.dropbox.com/s/w6mt2tvqvqgl9ss/CONVERT131.zip?dl=0
mkdir -pv ${PRG}/convert
cd ${PRG}/convert

wget -O CONVERT131.zip https://www.dropbox.com/s/w6mt2tvqvqgl9ss/CONVERT131.zip?dl=1
unzip -o -d convert131 CONVERT131.zip

#* Distruct: https://rosenberglab.stanford.edu/distruct.html
mkdir -pv ${PRG}/distruct
cd ${PRG}/distruct

wget https://rosenberglab.stanford.edu/software/distruct1.1.tar.gz
tar -xvzf distruct1.1.tar.gz
wget -P doc/ https://rosenberglab.stanford.edu/papers/distructNote.pdf


#* Network: https://www.fluxus-engineering.com/sharenet.htm
mkdir -pv ${PRG}/network
cd ${PRG}/network

wget -O network10200.zip https://www.fluxus-engineering.com/NETW10200.zip
unzip -o -d network network10200.zip
wget -P doc/ https://www.fluxus-engineering.com/Network10200_user_guide.pdf


#* Structure: https://web.stanford.edu/group/pritchardlab/structure.html
mkdir -pv ${PRG}/network
cd ${PRG}/network
#mkdir -v gui/
#mkdir -v console/

#with gui
wget -P gui/ https://web.stanford.edu/group/pritchardlab/structure_software/release_versions/v2.3.4/release/structure_linux_frontend.tar.gz
cd gui
tar -xvzf structure_linux_frontend.tar.gz

cd ..
#without gui
wget -P console/ https://web.stanford.edu/group/pritchardlab/structure_software/release_versions/v2.3.4/release/structure_linux_console.tar.gz
cd console/
tar -xvzf structure_linux_console.tar.gz



