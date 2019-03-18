X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2066" "Monday" "18" "March" "2019" "22:42:19" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1903182209050.22468@tvnag.unkk.fr>" "60" "[oss-security] [SECURITY ADVISORIES] libssh2" "^Date:" nil nil "3" "2019031821:42:19" "[oss-security] [SECURITY ADVISORIES] libssh2" (number mark "        daniel@haxx. Mar 18   60/2066  " thread-indent "\"[oss-security] [SECURITY ADVISORIES] libssh2\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORIES] libssh2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32612 invoked by uid 550); 18 Mar 2019 21:42:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32575 invoked from network); 18 Mar 2019 21:42:33 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1903182209050.22468@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Mon, 18 Mar 2019 22:42:19 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORIES] libssh2
To: libssh2 development <libssh2-devel@cool.haxx.se>,
        oss-security@lists.openwall.com

Hello!

I'm writing you to announce the release of nine separate security advisories 
concerning libssh2.

All these fixes are also included in the brand new libssh2 1.8.1 release, just 
shipped and available on https://www.libssh2.org/

CVE-2019-3855
  Possible integer overflow in transport read allows out-of-bounds write
  URL: https://www.libssh2.org/CVE-2019-3855.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3855.patch

CVE-2019-3856
  Possible integer overflow in keyboard interactive handling allows
  out-of-bounds write
  URL: https://www.libssh2.org/CVE-2019-3856.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3856.patch

CVE-2019-3857
  Possible integer overflow leading to zero-byte allocation and out-of-bounds
  write
  URL: https://www.libssh2.org/CVE-2019-3857.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3857.patch

CVE-2019-3858
  Possible zero-byte allocation leading to an out-of-bounds read
  URL: https://www.libssh2.org/CVE-2019-3858.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3858.patch

CVE-2019-3859
  Out-of-bounds reads with specially crafted payloads due to unchecked use of
  `_libssh2_packet_require` and `_libssh2_packet_requirev`
  URL: https://www.libssh2.org/CVE-2019-3859.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3859.patch

CVE-2019-3860
  Out-of-bounds reads with specially crafted SFTP packets
  URL: https://www.libssh2.org/CVE-2019-3860.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3860.patch

CVE-2019-3861
  Out-of-bounds reads with specially crafted SSH packets
  URL: https://www.libssh2.org/CVE-2019-3861.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3861.patch

CVE-2019-3862
  Out-of-bounds memory comparison
  URL: https://www.libssh2.org/CVE-2019-3862.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3862.patch

CVE-2019-3863
  Integer overflow in user authenicate keyboard interactive allows
  out-of-bounds writes
  URL: https://www.libssh2.org/CVE-2019-3863.html
  Patch: https://libssh2.org/1.8.0-CVE/CVE-2019-3863.txt

-- 

  / daniel.haxx.se
