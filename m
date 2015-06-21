X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2222" "Sunday" "21" "June" "2015" "06:42:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150621104239.641F96FC0DF@smtpvmsrv1.mitre.org>" "64" "[oss-security] Re: zip-attachments v1.1.4 wordpress plugin arbitrary file download vulnerability." nil nil nil "6" "2015062110:42:39" "[oss-security] Re: zip-attachments v1.1.4 wordpress plugin arbitrary file download vulnerability." (number mark "U       cve-assign@m Jun 21   64/2222  " thread-indent "\"[oss-security] Re: zip-attachments v1.1.4 wordpress plugin arbitrary file download vulnerability.\"\n") "<86C35E8E-96DD-40C0-8530-1F426328CE21@me.com>" ("<86C35E8E-96DD-40C0-8530-1F426328CE21@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1861 invoked by uid 550); 21 Jun 2015 10:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32750 invoked from network); 21 Jun 2015 10:42:51 -0000
From: cve-assign@mitre.org
To: larry0@me.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <86C35E8E-96DD-40C0-8530-1F426328CE21@me.com>
Message-Id: <20150621104239.641F96FC0DF@smtpvmsrv1.mitre.org>
Date: Sun, 21 Jun 2015 06:42:39 -0400 (EDT)
Subject: [oss-security] Re: zip-attachments v1.1.4 wordpress plugin arbitrary file download vulnerability.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Vulnerability: zip-attachments allows arbitrary file downloads because
> it doesn't check the download path of the requested file.
> 
> In zip-attachments/download.php, there is no check to see if the file
> is outside of the intended download path:
> 
>   8 if(isset($_REQUEST['za_file']) && !empty($_REQUEST['za_file'])){
>   9 
>  10     $file = $_GET['za_file'];
>  11     $filename = $_GET['za_filename'];
>  12 
>  13     header('Content-Type: application/zip');
>  14     header('Content-Length: ' . filesize($file));
>  15     header('Content-Disposition: attachment; filename="'.$filename.'.zip"');
>  16 
>  17     readfile($file);
> 
> Any file readable by the httpd process can be downloaded.
> 
> PoC:
> /wp-content/plugins/zip-attachments/download.php?za_file=../../../../../etc/passwd&za_filename=passwd

Use CVE-2015-4694.


> Vendor: Rick Torres @ricard_dev
> Fixed in: v1.1.5 by vendor.
> Download: https://wordpress.org/plugins/zip-attachments/

We don't know whether this is the same as:

  https://wordpress.org/plugins/zip-attachments/changelog/
  1.5.1
  I've tried to fix a vulnerability.

Possibly the similar numbers (1.1.5 versus 1.5.1) correspond to two
different vulnerabilities.
(https://downloads.wordpress.org/plugin/zip-attachments.1.5.1.zip
exists, but neither
https://downloads.wordpress.org/plugin/zip-attachments.1.1.4.zip nor
https://downloads.wordpress.org/plugin/zip-attachments.1.1.5.zip
exists.)

1.5.1 uses sanitize_file_name, apparently blocking '/' characters.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVhpS4AAoJEKllVAevmvmsCu0H/Ruf7xLl/3s1WIkYf+5Zq69K
QApZ9xtEw8w+081r0pDDDHoAkh5Sqoinf4J3kSvEAhPgnYH2OsI+8UZuAssCbNCh
dnFyF9TU59J+WnEmKh/gk9YTg/lxxApM2EG7hcAGVWbTHVVQ6mhy7XytgdC99LVK
CcNyhCRQV3V/FCxOQ7H1tm048+AlZL2t+w8PawzjJ8xwUPn3+/Dqc08bs3ZNew9u
Q67cqsBgjemj3aDUQxkHTvz1N6TB78+QCDU5zwaUHsCTA3ZSgv2A4m4B6nHCgt3r
J7eYzlt1nUrdTvz00UpUDF+MPdLcl+NZWH3KvQE/qlC2iJP7h5ZL4K6H0KJZgG4=
=p++T
-----END PGP SIGNATURE-----
