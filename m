X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2984" "Sunday" "21" "June" "2015" "18:00:51" "-0500" "sec@inventropy.us" "sec@inventropy.us" "<6CCDD20D-133A-40D6-B244-6468917DD5E1@inventropy.us>" "80" "[oss-security] Re: Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS" nil nil nil "6" "2015062123:00:51" "[oss-security] Re: Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS" (number mark "U       sec@inventro Jun 21   80/2984  " thread-indent "\"[oss-security] Re: Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS\"\n") "<20150621155919.0E01633E058@smtpvbsrv1.mitre.org>" ("<20150621155919.0E01633E058@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14197 invoked by uid 550); 21 Jun 2015 23:03:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13392 invoked from network); 21 Jun 2015 23:01:05 -0000
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: "sec@inventropy.us" <sec@inventropy.us>
In-Reply-To: <20150621155919.0E01633E058@smtpvbsrv1.mitre.org>
Date: Sun, 21 Jun 2015 18:00:51 -0500
Cc: oss-security@lists.openwall.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <6CCDD20D-133A-40D6-B244-6468917DD5E1@inventropy.us>
References: <20150621155919.0E01633E058@smtpvbsrv1.mitre.org>
To: cve-assign@mitre.org
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] Re: Yoast Wordpress SEO Plugin <= 2.1.1 Stored, Authenticated XSS

Thank you for investigating. I agree that since this was never patched ther=
e don't need to be two separate CVE identifiers, but it does seem a little =
odd to create a new 2012 CVE. In any case, at least it now has an identifie=
r.

Thanks again,
Charles

> On Jun 21, 2015, at 10:59 AM, cve-assign@mitre.org wrote:
>=20
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
>> https://inventropy.us/blog/yoast-seo-plugin-cross-site-scripting-vulnera=
bility/
>> https://wordpress.org/plugins/wordpress-seo/changelog/
>=20
> See http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2012-6692 for
> the XSS issue related to the "everyone can make a post. This post is
> then validate by an admin user. So everyone can use the security
> breach to execute javascript in admin" threat model on the
> https://wordpress.org/support/topic/security-issue-with-post-title-field-=
xss-vulnerability
> page from 2012-10-31.
>=20
> It appears that the outcome is that the XSS payload is stored and then
> immediately reflected. Probably the highest risk is from the stored
> XSS, but the reflected aspect is also relevant if the admin encounters
> a malicious web site while logged into WordPress.
>=20
> However, that 2012-10-31 page also says:
>=20
>  - connect you on admin of your site
>  - go to url : [www.yoursite.com]/wp-admin/post-new.php?post_title=3D<scr=
ipt>alert('There is a problem');</script>
>  - The alert message is displaying !
>=20
>  =3D> CSRF : http://en.wikipedia.org/wiki/Cross-site_request_forgery
>=20
> Is (or was) there a separate CSRF vulnerability, of interest to an
> attacker who wants to make a post (without any XSS payload) with the
> admin's credentials?
>=20
>=20
> Finally, you mentioned:
>=20
>> the plugin author said that it had already been patched at the time.
>=20
>>> This was already patched in 1.3
>=20
> Apparently this refers to:
>=20
>  http://plugins.svn.wordpress.org/wordpress-seo/trunk/changelog.txt
>=20
>  =3D 1.3 =3D
>=20
>  * Long list of small fixes and improvements to code best practices
>  after Sucuri review. Fixes 3 small security issues.
>=20
> We don't know whether there was an earlier incomplete fix to the
> metabox functionality, so we aren't currently assigning a different
> CVE ID for versions before 1.3.
>=20
> - --=20
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>=20
> iQEcBAEBAgAGBQJVht6kAAoJEKllVAevmvmska0IALWeV0XUgZnR55gmkkcG3eQj
> zYKi+tIF3l6+e15h5JjxFcdvoND+DqyMgpko+0Y5qO+ret/lFRPWjfZi8IE/QLXl
> FNiCSKA9k0s+cte+rcsI+UPp3iUC9aG0XkHCD0s5HU27Zd2N6dzWJiJEyy+x9LzN
> ERt20Vmb/zgh2oI5CWzFgtyLE4dQ6svJG9EKEtZxDaBJWFKB2icbpQ0Bwztwsbe4
> eWjaQnMF+vwb7jFJL99TXzDKFuyVIg9fIOlBj7bEHXSTmhkFiilVaXMF/n2LKIxa
> oKrgmmQ9DkZtjPJeBWM7uEiDg6gj5I/+sJ6XIqLzCr5PKsSJIxMq3dVvfTOwkSc=3D
> =3DTGMg
> -----END PGP SIGNATURE-----

