!/bin/bash

# Require the URI of a website to be downloaded
if [ -z "$1" ]; then
  echo "Usage: sd.sh [URL]..."
  exit 0
fi

dest=""
dest=$(date +%F--%T)
mkdir $dest

wget -k -r -N -p -E -F -nH -P $dest $1

# -k (--convert-links) == After the download is complete, convert the links in the document to make them suitable for local viewing.
# -r (--recursive) == Turn on recursive retrieving
# -N (--timestamping) == With this option, for each file it intends to download, Wget will check whether a local file of the same name exists.
# If it does, and the remote file is not newer, Wget will not download it.
# -p (--page-requisites) == This option causes Wget to download all the files that are necessary to properly display a given html page.
# -E (--adjust-extension) If a file of type application/xhtml+xml or text/html is downloaded and the URL does not end with the regexp \.[Hh][Tt][Mm][Ll]?,
# this option will cause the suffix .html to be appended to the local filename.
# -F (--force-html) == When input is read from a file, force it to be treated as an HTML file.
# -nH (--no-host-directories) == Disable generation of host-prefixed directories.
# -P == directory prefix
