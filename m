X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1900" "Wednesday" "4" "April" "2018" "15:57:36" "+0200" "Patrick Uiterwijk" "puiterwijk@redhat.com" "<20180404135736.GA14395@workstation.home.puiterwijk.org>" "61" "[oss-security] CVE-2018-1002150: koji: Dist Repo call missing authorization check allowing filesystem manipulation" nil nil nil "4" "2018040413:57:36" "[oss-security] CVE-2018-1002150: koji: Dist Repo call missing authorization check allowing filesystem manipulation" (number mark "U       puiterwijk@r Apr  4   61/1900  " thread-indent "\"[oss-security] CVE-2018-1002150: koji: Dist Repo call missing authorization check allowing filesystem manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26446 invoked by uid 550); 4 Apr 2018 14:57:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5827 invoked from network); 4 Apr 2018 14:06:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :user-agent;
        bh=6pgjfxc3ZIZNL0pAvmZMThiafz+J8cAtYJWT8EyOBC4=;
        b=iRDYSi0Txd3uBE0BSeYg16gR+Cz7Z3T0LfFmPkdxQx/Qrf9JFWpmtmKcjj9lJXJ+vq
         0X9Fxh6aQ9dDTSS3aUm8cuEu/vA4GiOBMkCw5xinaswiN+QuFFaQgnvalrvgLMtLVVZU
         fvj4waK/GshwkG0ykrqtBF2JRyWODgjENPiGcLYj6amZiTcXs3qZNXiJKTfRouemlGCQ
         2a2467OK5sFwzaWYaZcdm7gxEgPQ9uKKSShreIxmYtG7mEfDmXBXvn8tjUDp8d6p7Zft
         PZ2CCbtBonZGPwpjARiBmLoqDG2198E5OHdd0IinKfOmkX/kruDhpRdUq2GJvL1/PHnC
         a/jA==
X-Gm-Message-State: ALQs6tAkMGzJ8APieFPqElvV7TE1ZzN3ClyMFe4u57/h0A64NkkiUxGe
	NkZu2j/Z7Ppv+TyQiovRDU18N5snVdk=
X-Google-Smtp-Source: AIpwx48IP5ZqtQGN8+rMj0JVECjKVL7/3ALi1WoDk63GSAzcegQ49C8MDyBJbpNvkSnkA5Lw63bLoA==
X-Received: by 2002:a9d:9c:: with SMTP id w28-v6mr11361761oti.328.1522850769226;
        Wed, 04 Apr 2018 07:06:09 -0700 (PDT)
Date: Wed, 4 Apr 2018 15:57:36 +0200
From: Patrick Uiterwijk <puiterwijk@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20180404135736.GA14395@workstation.home.puiterwijk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
User-Agent: Mutt/1.9.3 (2018-01-21)
Subject: [oss-security] CVE-2018-1002150: koji: Dist Repo call missing authorization check
 allowing filesystem manipulation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Description
===========

A vulnerability in Koji was found that allows manipulation of the koji filesystem.
This allows an attacker to extract secrets from disk that the Hub has access to or to overwrite
files on disk that httpd can write to.


Affected versions
=================

All versions of Koji 1.12 before 1.12.1 are vulnerable.
All versions of Koji 1.13 before 1.13.1 are vulnerable.
All versions of Koji 1.14 before 1.14.1 are vulnerable.
All versions of Koji 1.15 before 1.15.1 are vulnerable.


Patched versions
================

Koji versions 1.12.1, 1.13.1, 1.14.1 and 1.15.1 are available on the website, and
all include patches to solve this problem.


Mitigation
==========

A temporary mitigation until the code patch is applied would be to move the repos-dist
folder in the koji root directory out of the way and create a file with the same name
as the folder that was just moved away.


Credits
=======

This issue was discovered by Mike McLean of Red Hat.


References
==========

https://docs.pagure.org/koji/CVE-2018-1002150/
-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJaxNnQAAoJEIZXmA2atR5Q2/MQAJnIw5m4l64npyPmyZMzTbB1
6hn7OBjTa4NUD1xlxkPDPjo1Z1SgnQP3D01mJCU/Ot9b3eBNiznfqDIc++y78xIs
Hdb9b3IY7OcHhXwHbqr9Y4XfcvnDIG9p9q94uHnAmCpGURZhWG7QzDJ7vZsy4916
vSepVhxhGtP6pLYG5BLkUan3YmS3Eg0eUVJ25Ijhm7WRlOEHAQI2Ih52LIljExzq
3EhA1j2zeWz58Zw3zOnlX8b03yfN56y8HbCIF9fJtFAf7+5noEHL4gO8IGuvKn1d
jw+RZVzezJzHTejapML9ttrRRnP7DGNanah0DJFphm3BxfuleSotCmE0phTe8aIK
7vRGqtrWdPfkjaDe6nXOL1YlMm8Vy0qyw4qbUazY+mB5eFZXTS8W6cJyH6eeM9Kg
cnN5cOfkP82CoT7akTLjoO8RZRMme5okTqsetMrJkvqLTaYJ+UjD+ODFmEXczT8o
DwbfqWSBysfRQtukdHNsQ49TAAc+xFSjTBcTBYBvXoo46oOZo3NNYYIe8uTWipeH
coIVoJwCRvNpsSkwaLsUA3qETtq/+H3pep+dx4td2xpLbFFwo8XP+IMpgEIIMij5
fKzz1NMxAogUanBVnjdP/mVAvf1tnu2rKF/MqLirv11t5IvDymJBPGeyUkJhwT89
+AXA2bXHVAhBiqiD12qO
=zv8L
-----END PGP SIGNATURE-----
