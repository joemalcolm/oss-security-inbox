X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3254" "Monday" "15" "June" "2015" "02:54:01" "-0500" "sec@inventropy.us" "sec@inventropy.us" "<0FF80D13-DF38-4489-B6DF-AC5E32D07AD3@inventropy.us>" "67" "[oss-security] Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS" nil nil nil "6" "2015061507:54:01" "[oss-security] Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS" (number mark "        sec@inventro Jun 15   67/3254  " thread-indent "\"[oss-security] Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14059 invoked by uid 550); 15 Jun 2015 08:05:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7556 invoked from network); 15 Jun 2015 07:54:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <0FF80D13-DF38-4489-B6DF-AC5E32D07AD3@inventropy.us>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Mon, 15 Jun 2015 02:54:01 -0500
From: "sec@inventropy.us" <sec@inventropy.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS
To: oss-security@lists.openwall.com

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Info
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Affects:         Yoast Wordpress SEO Plugin <=3D 2.1.1
Download URL:    https://wordpress.org/plugins/wordpress-seo/
Advisory URL:    https://inventropy.us/blog/yoast-seo-plugin-cross-site-scr=
ipting-vulnerability/
Acknowledgement: https://wordpress.org/plugins/wordpress-seo/changelog/

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
The "snippet preview" functionality of the Yoast WordPress SEO plugin prior=
 to version 2.2 was susceptible to=20
cross-site scripting in the admin panel, related to the "metabox" functiona=
lity. This vulnerability appears to have=20
been reported 2 years ago by someone named "badconker" (link: https://wordp=
ress.org/support/topic/security-issue-with-post-title-field-xss-vulnerabili=
ty#post-3575617), but the plugin author said that it had already been patch=
ed at the time.

The issue can be triggered by entering arbitrary HTML into the post title f=
ield, such as in the example URL provided below.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerable URL
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
http://example.site/wp-admin/post-new.php?post_title=3D<img onerror=3Dalert=
(1) src=3D>

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerable Code
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
try {
        str =3D jQuery('<div/>').html(str).text();
        str =3D str.replace(/<\/?[^>]+>/gi, '');
        str =3D str.replace(/\[(.+?)\](.+?\[\/\\1\])?/g, '');
} catch (e) {}

Link: https://github.com/Yoast/wordpress-seo/blob/2.1.1/js/wp-seo-metabox.j=
s#L1-13

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Updating to the latest version (2.2.1 at the time of this advisory) will fi=
x this issue.=
