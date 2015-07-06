X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4612" "Monday" "6" "July" "2015" "14:19:56" "+0200" "Andreas Stieger" "astieger@suse.de" "<559A726C.9060904@suse.de>" "122" "[oss-security] CVE request for vulnerabilities fixed in roundcubemail 1.1.2 and 1.0.6" nil nil nil "7" "2015070612:19:56" "[oss-security] CVE request for vulnerabilities fixed in roundcubemail 1.1.2 and 1.0.6" (number mark "        astieger@sus Jul  6  122/4612  " thread-indent "\"[oss-security] CVE request for vulnerabilities fixed in roundcubemail 1.1.2 and 1.0.6\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32726 invoked by uid 550); 6 Jul 2015 12:20:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32703 invoked from network); 6 Jul 2015 12:20:18 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
X-Enigmail-Draft-Status: N1110
Organization: SUSE Linux GmbH
Message-ID: <559A726C.9060904@suse.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Fm7IsFHeMowSgvmsgnFn4pI7MCnTkqlcw"
Cc: oss-security@lists.openwall.com
Date: Mon, 6 Jul 2015 14:19:56 +0200
From: Andreas Stieger <astieger@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for vulnerabilities fixed in roundcubemail 1.1.2 and
 1.0.6
To: cve-assign@mitre.org

--Fm7IsFHeMowSgvmsgnFn4pI7MCnTkqlcw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am requesting CVE identifiers for the three vulnerabilities fixed in
roundcubemail 1.1.2 and 1.0.6. Quotes shortened for brevity and relevance:

>From https://roundcube.net/news/2015/06/05/updates-1.1.2-and-1.0.6-released/
=20
> The security-related fixes in particular are:
> * XSS vulnerability in _mbox argument

Fix XSS vulnerability in _mbox argument handling (#1490417
<http://trac.roundcube.net/ticket/1490417>)
http://trac.roundcube.net/ticket/1490417

The XSS-vulnerability can be triggered by appending malicious script
code to the _mbox-parameter. The following example will pop an alert box:

=E2=80=8B
https://{YOURSERVER}/?_task=3Dmail&_mbox=3DINBOX%22%3E%3Cscript%3Ealert(%22=
Roundcube+v1.1.1+XSS%22)%3C%2Fscript%3E
<https://%7BYOURSERVER%7D/?_task=3Dmail&_mbox=3DINBOX%22%3E%3Cscript%3Ealer=
t%28%22Roundcube+v1.1.1+XSS%22%29%3C%2Fscript%3E>

Attackers could use this vulnerability to steal cookies or extract
email-content.

Commit:
1.1: http://trac.roundcube.net/changeset/b782815dac/github
Not claimed to affect 1.0.

> * security improvement in contact photo handling

Fix security issue in contact photo handling (#1490379
<http://trac.roundcube.net/ticket/1490379>)
http://trac.roundcube.net/ticket/1490379

There is a potential for an arbitrary read from an authenticated user
who uploads a contact (vCard) with a specially crafted POST.
[...]
by supplying the "_alt" param in the POST. User must be authenticated.
[...]
I was able to read any file on disk (the apache has access to, e.g.
config/config.inc.php) using GET request

Commits:
1.1: http://trac.roundcube.net/changeset/681ba6fc3/github
1.0: http://trac.roundcube.net/changeset/6ccd4c54b/github

> * potential info disclosure from temp directory

Fix potential info disclosure issue by protecting directory access
(#1490378 <http://trac.roundcube.net/ticket/1490378>)
http://trac.roundcube.net/ticket/1490378

The logs directory is not protected from browsing. Most log entries are
not bad, but one became evident on my host that was pretty nasty.

It looked like the following:

[25-Apr-2015 04:03:11 -0400]: <ijpv9kqo> DB Error: [1062] Duplicate entry '=
ijpv9kqofvpksxxxxxxxxxxxx' for key 'PRIMARY' (SQL Query: INSERT INTO `sessi=
on` (`sess_id`, `vars`, `ip`, `created`, `changed`) VALUES ('ijpv9kqofvpksx=
xxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxx=3D', '108.61.90.131', now(), now())) in =
/var/www/html/roundcubemail-1.1.1/program/lib/Roundcube/rcube_db.php on lin=
e 543 (POST /roundcubemail-1.1.1/?_task=3Dmail&_action=3Drefresh?_task=3D&_=
action=3D)

I obfuscated the sensitive fields, but this would be enough for a
non-credential user to view the file (via the webroot/logs/errors file),
and then replace their own cookies with the entry from above to log in
as a user that was listed there.

This seems to be a very rare occurrence, but considering that other
SQL/other actions might report other sensitive data into this file, it
might be worth automatically protecting this directory with an .htaccess
file, or prepending a php tag to avoid overt reading by any
unauthenticated user.

Commits:
http://trac.roundcube.net/changeset/012555c1c/github
1.1: http://trac.roundcube.net/changeset/16640c7fb0c8/github
Not claimed to affect 1.0.


Thanks,
Andreas

--=20
Andreas Stieger <astieger@suse.de>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Dilip Upmanyu, =
Graham Norton, HRB 21284 (AG N=C3=BCrnberg)



--Fm7IsFHeMowSgvmsgnFn4pI7MCnTkqlcw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVmnJ2AAoJECzWqVXhWUVGTnIQAKiFoYTljJps3y2KeVIoOQva
3ef5JqLHOC7ukoYbBG/vcKCCMiL07/HQGMcYQfLKjsvD2+hyIGKeGslJCSElklyI
5fGS6GUKOp0XwncRPlK1DWPKSSxuSI3uzQ1W0QdgvtdM8vrDiioft8XoSjBt6Iz7
bC1fy4+TCPw1wV5iZlOvZ8yTYhln4t0nbZ3TF/sbydlPT8iEdRZmksEo3c3KaXGA
+2hVDNnmHWvSGP0sH6NbQZKUT4TyqWft+9ApRPyakgEzNJjiX4CqP1X4qI0XLYrk
NPU8VmcRNpBWXEx/doRhF9SNWF6hytA6wdnZfejXWE5JWjwNsAMvg0+xVjt7TDCP
4MWAxB1VcSe7XnFZ8DWU+fu09r8pFOQy5kwg0hc+TR9UHEqWaxm7n3VqxSLg2sTa
VSU985qtNQXxUwP8i/z+GKSSK7M8CbKmAx56xnaQr5Rp8dWYt6TfP4rsw0bdwa4k
x53OyXRKTu2QmuBfvyFK0HXZpSV/PbJ2e3miD4/RObtlFERBYnqqz65p1uz8yjR2
eG8NganpegBzFOygZmhwMyLBNhXwxs5BwV1ztRK9V6ROQAqRaN/z7YRVsZ9P7rTm
MX83DEt7BFEj4eL2oLFi2HZfdVyBfBEw8vFW5iwIBW9lk4mykWQZAZh01eO9b2g7
xc6aLaBRGVblhR3nlaSR
=m9Du
-----END PGP SIGNATURE-----

--Fm7IsFHeMowSgvmsgnFn4pI7MCnTkqlcw--
