X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3055" "Monday" "20" "July" "2015" "22:45:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150721024539.C702A8BC082@smtpvmsrv1.mitre.org>" "68" "[oss-security] Re: Remote file download vulnerability in Wordpress Plugin image-export v1.1" nil nil nil "7" "2015072102:45:39" "[oss-security] Re: Remote file download vulnerability in Wordpress Plugin image-export v1.1" (number mark "        cve-assign@m Jul 20   68/3055  " thread-indent "\"[oss-security] Re: Remote file download vulnerability in Wordpress Plugin image-export v1.1\"\n") "<395B9BB0-1170-49A0-9799-9925DA61731D@me.com>" ("<395B9BB0-1170-49A0-9799-9925DA61731D@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11670 invoked by uid 550); 21 Jul 2015 02:47:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11384 invoked from network); 21 Jul 2015 02:45:52 -0000
In-Reply-To: <395B9BB0-1170-49A0-9799-9925DA61731D@me.com>
Message-Id: <20150721024539.C702A8BC082@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 20 Jul 2015 22:45:39 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remote file download vulnerability in Wordpress Plugin image-export v1.1
To: larry0@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Download Site: https://wordpress.org/plugins/image-export
> Vendor: www.1efthander.com
> Vendor Contact: https://twitter.com/1eftHander

[ https://web.archive.org/web/20150425215252/https://wordpress.org/plugins/image-export/
says "Active Installs: 20+" and
https://plugins.trac.wordpress.org/changeset/1112244 says
"03/13/15 ... adding image-export by 1eftHander." ]
 
>         if ( isset( $_REQUEST['file'] ) && !empty( $_REQUEST['file'] ) ) {
>                 $file = $_GET['file'];
>         
>                 header( 'Content-Type: application/zip' );
>                 header( 'Content-Disposition: attachment; filename="' . $file . '"' );
>                 readfile( $file );
>     8           unlink( $file );

> Exploit Code:
> curl http://example.com/wp-content/plugins/image-export/download.php?file=/etc/passwd

> The code in file download.php doesn't do any checking that the user is
> requesting files from the uploaded images directory only. And line 8
> attempts to unlink the file after being downloaded. This script could
> be used to delete files out of the wordpress directory if file
> permissions allow.

Our interpretation is that there is only one security problem. The
download.php script should only be operating on ZIP files created by
the image-export.php script (see the
http://plugins.svn.wordpress.org/image-export/trunk/ directory), but
does not enforce that in any way. The latter script has
"define( 'DOWNLOAD_PATH', dirname( __FILE__ ) );" near the top. There
doesn't seem to be any evidence that either reading other files in the
DOWNLOAD_PATH directory, or deleting other files in the DOWNLOAD_PATH
directory, is supported behavior. This is not necessarily about
directory traversal. The only file that should be either read or
deleted is an images*.zip file. Deleting this file is apparently
intentional because there's no need to continue storing both the
individual files and the ZIP archive.

We don't think there should be two CVE IDs based on an argument such
as "reading files is probably important only with directory traversal,
but deleting files is probably important even without directory
traversal."

Use CVE-2015-5609 for the vulnerability in which download.php proceeds
with readfile and unlink without verifying that the pathname is
image-export's own pathname for its own ZIP file.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVrbG9AAoJEKllVAevmvmsOGYH/0If9ZkZGz3/Y8w2Zc4FgShw
4AbcQt/sXiHufN0wuq2RbG+iq5Fztrq4hmH4OT7SqA6tEgx2ArKe58q3w0Lg34Mp
as4iv8D7RPs70xFZdTuByuupOJPP1mmP180WukM/ueuuWoBxxZCbjblf1C2cLozL
u7j7v5ROGbM6yCv/lDDc412ahp0/LdyjUMR5f99Ap1+i/rRNlH62tvt2746jvUqV
NammFvi447WhNpr3uCH+foFzsii9rZe2g7dklpXuOY1yi8Iha3hC1aOjO+710xV4
J6A0VF63E0QHrsEZYjbF8jqA0GL5V3fqdVVUWfDhu4ttwyqSvCzxgZAx7zxNRIU=
=A5bx
-----END PGP SIGNATURE-----
