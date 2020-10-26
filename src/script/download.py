import requests
from tqdm import tqdm

## full url for downloading. 
url = 'https://tenet.dl.sourceforge.net/project/keepass/KeePass%202.x/2.46/KeePass-2.46-Setup.exe'

def download(url, filename):
 response = requests.get(url, stream=True)
 with tqdm.wrapattr(open(filename, "wb"), "write",
                   miniters=1, desc=url.split('/')[-1],
                   total=int(response.headers.get('content-length', 0))) as fout:
    for chunk in response.iter_content(chunk_size=4096):
        fout.write(chunk)
 
 
 
## please put the full name of the file including the .exe or .zip or .bin
download(url,'KeePass-2.46-Setup.exe')

