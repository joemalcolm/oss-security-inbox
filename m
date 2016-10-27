X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7254" "Thursday" "27" "October" "2016" "22:42:06" "+0100" "Luke Hinds" "lhinds@redhat.com" "<00ce3a12-88cc-5727-5ee1-ff13b8748a3f@redhat.com>" "178" "[oss-security] [OSSN-0076] Glance Image service v1 and v2 api image-create vulnerability" nil nil nil "10" "2016102721:42:06" "[oss-security] [OSSN-0076] Glance Image service v1 and v2 api image-create vulnerability" (number mark "U       lhinds@redha Oct 27  178/7254  " thread-indent "\"[oss-security] [OSSN-0076] Glance Image service v1 and v2 api image-create vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5608 invoked by uid 550); 27 Oct 2016 22:22:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7539 invoked from network); 27 Oct 2016 21:42:25 -0000
To: openstack@lists.openstack.org, openstack-dev@lists.openstack.org,
        oss-security@lists.openwall.com
From: Luke Hinds <lhinds@redhat.com>
Message-ID: <00ce3a12-88cc-5727-5ee1-ff13b8748a3f@redhat.com>
Date: Thu, 27 Oct 2016 22:42:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Il6LlSHQpTFRW8xR71tMHGDLjIkgN67dc"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 27 Oct 2016 21:42:14 +0000 (UTC)
Subject: [oss-security] [OSSN-0076] Glance Image service v1 and v2 api image-create
 vulnerability

--Il6LlSHQpTFRW8xR71tMHGDLjIkgN67dc
Content-Type: multipart/mixed; boundary="qFA82vwoIce2AiwoxjRGPajvVO7SOWs1X";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: openstack@lists.openstack.org, openstack-dev@lists.openstack.org,
 oss-security@lists.openwall.com
Message-ID: <00ce3a12-88cc-5727-5ee1-ff13b8748a3f@redhat.com>
Subject: [OSSN-0076] Glance Image service v1 and v2 api image-create
 vulnerability

--qFA82vwoIce2AiwoxjRGPajvVO7SOWs1X
Content-Type: multipart/mixed;
 boundary="------------1FD27732830D829CC9D813E1"

This is a multi-part message in MIME format.
--------------1FD27732830D829CC9D813E1
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Glance Image service v1 and v2 api image-create vulnerability
---

### Summary ###
No limits are enforced within the Glance image service for both v1 and
v2 `/images` API POST method for authenticated users, resulting in
possible denial of service attacks through database table saturation.

### Affected Services / Software ###
All versions of Glance image service.

### Discussion ###
Within the Glance image service, calls to the POST method within v1 or
v2/images creates an image (record) in `queued` status. There is no
limit enforced within the Glance API on the number of images a single
tenant may create, just on the total amount of storage a single user may
consume.

Therefore a user could either maliciously or unintentionally fill
multiple database tables (images, image_properties, image_tags,
image_members) with useless image records, thereby causing a denial of
service by lengthening transaction response times in the Glance database.

### Recommended Actions ###
For all versions of Glance that expose either the v1 and v2/images API,
operators are recommended to deploy external rate-limiting proxies or
web application firewalls, to provide a front layer of protection to
glance. The Glance database should be monitored for abnormal growth.
Although rate-limiting does not eliminate this attack vector, it will
slow it to the point where you can react prior to a denial of service
occurring.

The following solutions may be considered, however it is key that the
operator carefully plans and considers the individual performance needs
of users and services within their OpenStack cloud, when configuring any
rate limiting functionality.

#### Repose ####
Repose provides a rate limiting filter, that can utilise limits by IP,
Role (OpenStack Identity v3 filter) or header.

https://repose.atlassian.net/wiki/display/REPOSE/Rate+Limiting+Filter

#### NGINX ####
NGINX provides the limit_req_module, which can be used to provide a
global rate
limit. By means of a `map`, it can be limited to just the POST method.

Further details can be found on the nginx site:
http://nginx.org/en/docs/http/ngx_http_limit_req_module.html

#### HAProxy ####
HAProxy can provide inherent rate-limiting using stick-tables with a General
Purpose Counter (gpc)

Further details can be found on the haproxy website:

http://blog.haproxy.com/2012/02/27/use-a-load-balancer-as-a-first-row-of-de=
fense-against-ddos

#### Apache ####
A number of solutions can be explored here as follows.

##### mod_ratelimit #####
http://httpd.apache.org/docs/2.4/mod/mod_ratelimit.html

##### mod_qos #####
http://opensource.adnovum.ch/mod_qos/dos.html

##### mod_evasive #####
https://www.digitalocean.com/community/tutorials/how-to-protect-against-dos=
-and-ddos-with-mod_evasive-for-apache-on-centos-7

##### mod_security #####
https://www.modsecurity.org/

#### Limit `add_image` to admin role ####

Another possible mitigation is to restrict image creation to the admin
role, however this should only be done for those cases in which there
are Glance nodes dedicated to end-user access only. Restriction to admin
only on Glance nodes that serve OpenStack services will for example,
remove the ability to create snapshots from the Compute API or to create
bootable volumes from Cinder.

To restrict image creation to the role admin only, amend
`/etc/glance/policy.json` accordingly.

    "add_image": "role:admin",

### Contacts / References ###
Author: Luke Hinds, Red Hat
This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0076
Original LaunchPad Bug : https://bugs.launchpad.net/ossn/+bug/1545092
OpenStack Security ML : openstack-security@lists.openstack.org
OpenStack Security Group : https://launchpad.net/~openstack-ossg



--------------1FD27732830D829CC9D813E1
Content-Type: application/pgp-keys;
 name="0x3C202614.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0x3C202614.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
Version: GnuPG v2=0A=
=0A=
mQENBFcLyhwBCADSNb8iiJtTiTVyLB9gmIah09wj48CULxqIC8VYogNRwky3CmQe=0A=
fLQgcirIlvWFqL39PHHon3AYzpEU1fBB1G0SN2/bFT+qO/vE8fjkCuAxMJkfollN=0A=
7Nq9y1/bSnXpw0uS+avKHClLD5OGX2oY2mDkiExkm8bzONu2+Iu3ZW313KU6Qw//=0A=
sukJNwVVB8t67xsxiADUcfxUYQEZ1CGKPD4KFovrzmRodFE3BtMnsJNzHPMsI1CT=0A=
Bt+8BuQhmoZ5akQSPQfojfVZvqr3DbCcFEQaBm5GCz6Rdqch1R7kQ+lgudXqpW92=0A=
N+qm0kozx34TMFHw6mazuV2XhGpRUbV3r2GpABEBAAG0Hkx1a2UgSGluZHMgPGxo=0A=
aW5kc0ByZWRoYXQuY29tPokBOAQTAQIAIgUCVwvKHAIbAwYLCQgHAwIGFQgCCQoL=0A=
BBYCAwECHgECF4AACgkQ8WVWFzwgJhRnyQf6AnYhPjNfL6pKCQ/PjmyisgfMIXwH=0A=
wK3P8Ev2Am1+xipt254NyZbO7P5i7efJ3GZqBc4TR93j8WqKalri+CYYao+PpNqE=0A=
u6nlA3vbL9LA6W7B/hQLSFt2gNmMp24tNBenpqYkNOQA8A/5H0EOiyvhjepxUQ7+=0A=
1jz1kKhKFua4a6nBSEdtqNGckOTx9T3q5ktQAp3tjhXQTaqNFKme4Wq5axT/aIe1=0A=
gJRwa9ZPWEMdK1jyw88vFrEa4Y/3N29QlpaN9XwU4Wp8Amij2MN+C3BjF30sFXd3=0A=
Cr6KU3VpcqqfM4s1ryrEJCtCpelOs8wK8Hr9xLeZ114PRYm+xSsAacNptLkBDQRX=0A=
C8ocAQgAuqHCGpL2e3CNLbYFm19la3Z23/zbLZrSZyvhxHDuYlEfdK9qjX7zyYxV=0A=
yNHyI6jhxDXED6ZObDgZNhST2V+E5h0t5PvLdfzLVffe/2bDa4GP+t63cqxtWPTV=0A=
kiPHyvDNsBrMmM9n7iiEa01OxKOnAxBxvUJshfzUAiy5AtekrFRFTGOeBRiJXJI7=0A=
N6dGtFBdQ7KfZRbQT3DMhz0nlERilva/+sbJ1sMbwDixMHhGBzVck9dWs+rJeMnl=0A=
6lTeDBXg8kYXkMwdcV4vjaoRs7d7haF4vhlL9VQbM1I/3rhUXjXHX8Ct8XMMYhtI=0A=
mHpbmqueX/lL4Rq71EAKoy4luvQk1QARAQABiQEfBBgBAgAJBQJXC8ocAhsMAAoJ=0A=
EPFlVhc8ICYUOnUIAKMnO8bxB1UQRAkpzDq97fWaPSJgSxKRD8fzDg2k0zzuxeQ6=0A=
D6EtSxmViTqYbjxr6Gd/bzuNQOkKy/fQXHbGL/zDurR+Xh+GH7yr+ynFdlWY701O=0A=
Sa1+xAT5igQaKl29ofjH/I5sxCTZiCwySFcwhdpGUg1IMn7TlzPT6r/2Pafueqyh=0A=
a0VPUxL91H+2emxu5EALHPaOmwyTlZWUmr4KL5BE88RTdZtu851nXSH6/qtGPmoe=0A=
NrAh2yuKR9EkQYh9XyqC7dHQM4gM12XGTlwIwEg0zsE7Ve7ZewmXEKeqo2VTMPAm=0A=
eC5p/0sWKobjfctTp6nuzolU6Ph6zJxPrHK+EoY=3D=0A=
=3DU3nH=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------1FD27732830D829CC9D813E1--

--qFA82vwoIce2AiwoxjRGPajvVO7SOWs1X--

--Il6LlSHQpTFRW8xR71tMHGDLjIkgN67dc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYEnSyAAoJEPFlVhc8ICYUGRAH/AwATNp0A8PBoPBluqdUlO+h
/gXdTuyN4BmbqqSY4OTCXCKOjLx2CT29gAtksDzaqTBDbssDOcYijkOiRI4i3ett
ad0iOexX3/eD6c+2O/nE4CMW2Eyb24VyvlhKt0m6suBAkpxjKuPwalKHFlBvI5IL
WEfVf0ZNlCgQg/Dg7NjfmIP1PEfU5lwRSCHjZcNMaHmhSsFr4tZfuxu+9AM8ZpOi
hyAriEpSSf9l9OsLbQWlG2ZxiXu8W17eSELnKEJJxFcCtz09fSv+Sx9zgj+hg6SJ
1Kx+ui3H8fCkygP3C7XGoZ+lPKha4QAwluBRX14aNQtCVucP/XNVVmPb+QvNyyI=
=M0WB
-----END PGP SIGNATURE-----

--Il6LlSHQpTFRW8xR71tMHGDLjIkgN67dc--
