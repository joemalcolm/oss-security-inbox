X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5075" "Wednesday" "10" "February" "2021" "11:53:47" "-0300" "Flavio Leitner" "fbl@redhat.com" "<e49accc1-7fe2-5427-b26a-8497c52384b4@redhat.com>" "167" "[oss-security] CVE-2020-35498: Open vSwitch: Packet parsing vulnerability" nil nil nil "2" "2021021014:53:47" "[oss-security] CVE-2020-35498: Open vSwitch: Packet parsing vulnerability" (number mark "U       fbl@redhat.c Feb 10  167/5075  " thread-indent "\"[oss-security] CVE-2020-35498: Open vSwitch: Packet parsing vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-35498: Open vSwitch: Packet parsing vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1719 invoked by uid 550); 10 Feb 2021 15:04:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20408 invoked from network); 10 Feb 2021 14:54:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612968856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=P0FXBfavcKkxbHSIm51MiQWB0q0IUCoKDlA9RYQ+8KM=;
	b=ZznKbbnGU8NUwozxtpe5HfIP4RrrQAf1FLnjPZ4M5pU+W9D64/cHGWMyB4t5Ko5WZaYfKI
	rAOyMBPYS/cKeprDXosRb/D9Io+WSbF0YimgFHwv6Ys6KpQfD84XEtvNuSrqvJwfQ20CI5
	gkVAZY4YhdWQZAig0RFi9FLjwf1mVSg=
X-MC-Unique: hAOVVrfvP2uTKK0PBJC3gA-1
From: Flavio Leitner <fbl@redhat.com>
To: oss-security@lists.openwall.com, ovs-announce@openvswitch.org,
 ovs-discuss@openvswitch.org
Cc: fbl@redhat.com, Ilya Maximets <i.maximets@ovn.org>
Message-ID: <e49accc1-7fe2-5427-b26a-8497c52384b4@redhat.com>
Date: Wed, 10 Feb 2021 11:53:47 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fbl@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="3oMn5V7qfqCsCrIcB8TEhFTBQxmP4mO9S"
Subject: [oss-security] CVE-2020-35498: Open vSwitch: Packet parsing vulnerability

--3oMn5V7qfqCsCrIcB8TEhFTBQxmP4mO9S
Content-Type: multipart/mixed; boundary="S0ClyAEm39lfh33S4JpKOZj3YbIDxsWhB";
 protected-headers="v1"
From: Flavio Leitner <fbl@redhat.com>
To: oss-security@lists.openwall.com, ovs-announce@openvswitch.org,
 ovs-discuss@openvswitch.org
Cc: fbl@redhat.com, Ilya Maximets <i.maximets@ovn.org>
Message-ID: <e49accc1-7fe2-5427-b26a-8497c52384b4@redhat.com>
Subject: [ADVISORY] CVE-2020-35498: Packet parsing vulnerability.

--S0ClyAEm39lfh33S4JpKOZj3YbIDxsWhB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple versions of Open vSwitch are vulnerable to potential problems
like denial of service attacks, in which crafted network packets could
cause the packet lookup to ignore network header fields from layers 3
and 4.

Both kernel and userspace datapaths are affected, including DPDK enabled
Open vSwitch (OVS-DPDK) as an example of the latter.

The crafted network packet is an ordinary IPv4 or IPv6 packet with
Ethernet padding length above 255 bytes. This causes the packet sanity
check to abort parsing header fields after layer 2.

When that situation happens, the classifier will use an unexpected set
of header fields. This could cause the packet lookup to either match
on unintended flows or return the default table miss action 'drop'.

As a consequence, the datapath can be instructed to match on an
incorrect range of packets with an action to drop them, for example.
Further legit traffic could hit the cached flow preventing it to
expire extending the situation.

The Common Vulnerabilities and Exposures project (cve.mitre.org)
assigned the identifier CVE-2020-35498 to this issue.

Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

For any version of Open vSwitch, preventing such packets to be
received by Open vSwitch or removing the excess of padding before
they are received by Open vSwitch mitigates the vulnerability. We
do not recommend attempting to mitigate the vulnerability this way
because of the following difficulties:

      - Open vSwitch obtains packets before the iptables or nftables
        host firewall, so iptables or nftables on the Open vSwitch host
        cannot ordinarily block the vulnerability.

      - If Open vSwitch is configured to support tunnels, such packets
        encapsulated within tunnels must also be prevented from reaching
        the host.

      - If Open vSwitch runs on a hypervisor, such packets from VMs can
        also trigger the vulnerability.


Fix
=3D=3D=3D

Patches to fix these vulnerabilities in Open vSwitch 2.5.x and newer are
applied to the various appropriate branches:

* master
https://github.com/openvswitch/ovs/commit/79349cbab0b2a755140eedb91833ad276=
0520a83

* 2.15
https://github.com/openvswitch/ovs/commit/0625dc79aec73b966f206e55655a28166=
96246d0

* 2.14
https://github.com/openvswitch/ovs/commit/59b588604b89e85b463984ba08a99badb=
4fcba15

* 2.13
https://github.com/openvswitch/ovs/commit/3512fb512c76a1f08eba4005aa2eb6916=
0d0840e

* 2.12
https://github.com/openvswitch/ovs/commit/53c1b8b166f3dd217bc391d707885f789=
e9ecc49

* 2.11
https://github.com/openvswitch/ovs/commit/abd7a457652e6734902720fe6a5dddb3f=
c0d1e3b

* 2.10
https://github.com/openvswitch/ovs/commit/79cec1a736b91548ec882d840986a11af=
fda1068

* 2.9
https://github.com/openvswitch/ovs/commit/48ceca0446b1c2c2c03e7551048c5b19e=
d23cc97

* 2.8
https://github.com/openvswitch/ovs/commit/35c280072c1c3ed58202745b7d27fbbd0=
736999b

* 2.7
https://github.com/openvswitch/ovs/commit/ad0d22f6435b43ecfc30c0e877d490d36=
721f200

* 2.6
https://github.com/openvswitch/ovs/commit/673c08eee8c8d4f2999ddd31524de7ff0=
f72b559

* 2.5
https://github.com/openvswitch/ovs/commit/354e7d860e444fd1472541b0fdc3b8678=
aa74828


Recommendation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We recommend that users of Open vSwitch apply the included patch, or
upgrade to a known patched version of Open vSwitch.  These include:

* 2.14.2
* 2.13.3
* 2.12.3
* 2.11.6
* 2.10.7
* 2.9.9
* 2.8.11
* 2.7.13
* 2.6.10
* 2.5.12


Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The Open vSwitch team wishes to thank the reporter:

     Joakim Hindersson <joakim.hindersson@elastx.se>





--S0ClyAEm39lfh33S4JpKOZj3YbIDxsWhB--

--3oMn5V7qfqCsCrIcB8TEhFTBQxmP4mO9S
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEJnAOsnXN5gEG/D+uiuB53f5rtRoFAmAj83sFAwAAAAAACgkQiuB53f5rtRrM
Iwf+J5KJ27u/jUAKXc0ItNLXw4XEOhQuLk8Ygjp96G/l16NZudSKGjz+OkzmkxBKUCyX5Fa0iFi2
uK/aG5m/qYUw7SUZ9bOaJOP7KkSiIhVfDWKNjQTrz7EVcZoS+7wzA3U8+ye2p5lHF0+BmHIHmoI+
LEa/1OtEEAQJnnnkG2aY+JKluapzSU1uqUM1BPOy0Ez8JwUm4EH3cCj5iBbtVosu+Ph4ChlCIKRS
jJLBvba5/ob2+PSakwYc4mmqSh23LM4z3Nds6Lmd0565h7+BrZZSVoiydQ4gqDT8ysaprvtqbJ43
bYAzFKjwikQdh9o71VMtF4Ui4Gw4t1mmz8uOQjKgIw==
=Uk+K
-----END PGP SIGNATURE-----

--3oMn5V7qfqCsCrIcB8TEhFTBQxmP4mO9S--

