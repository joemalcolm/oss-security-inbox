X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2417" "Tuesday" "3" "May" "2016" "01:29:28" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160503052928.C84286C0068@smtpvmsrv1.mitre.org>" "59" "[oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written" nil nil nil "5" "2016050305:29:28" "[oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written" (number mark "U       cve-assign@m May  3   59/2417  " thread-indent "\"[oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written\"\n") "<20160502203045.GA5924@w1.fi>" ("<20160502203045.GA5924@w1.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9354 invoked by uid 550); 3 May 2016 05:30:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9276 invoked from network); 3 May 2016 05:29:40 -0000
From: cve-assign@mitre.org
To: j@w1.fi
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160502203045.GA5924@w1.fi>
Message-Id: <20160503052928.C84286C0068@smtpvmsrv1.mitre.org>
Date: Tue,  3 May 2016 01:29:28 -0400 (EDT)
Subject: [oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Identifier: related to CVE-2016-2447

We understand the existence of the CVE-2016-2447 ID in
http://source.android.com/security/bulletin/2016-05-01.html and that
the reports credit Imre Rad; however, there are different exploitation
scenarios that affect different versions from the perspective of
hostapd/wpa_supplicant, and thus it is probably simplest for most
people to have separate hostapd/wpa_supplicant CVE IDs.

> WPA/WPA2 passphrase parameter ... to include control characters

> The WPS trigger for this requires local user action to authorize the WPS
> operation in which a new configuration would be received. The attacker
> would also need to be in radio range of the device or have access to the
> IP network to act as a WPS External Registrar. Such an attack could
> result in denial of service by not allowing hostapd or wpa_supplicant to
> start after they have been stopped.
> 
> wpa_supplicant v0.6.7-v2.5 with CONFIG_WPS build option enabled
> hostapd v0.6.7-v2.5 with CONFIG_WPS build option enabled

Use CVE-2016-4476.


> The local configuration update through the control interface SET_NETWORK
> command could allow privilege escalation for the local user to run code
> from a locally stored library file
>
> ... SET_CRED or SET commands, similar issue ...
> 
> wpa_supplicant v0.4.0-v2.5 with control interface enabled

Use CVE-2016-4477.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXKDatAAoJEHb/MwWLVhi2mqQQALY+roiB6xee2Ux/cpcPcVC0
jOTKd+hEVHKojwM0C0740Og5ruVwQnSF8L4ggrcSIlRw+rLa2zvyCz56HFLaO7VK
UetNHBJej0XmLJBJBeg/BP+zZXLzym2ptjiQBW3FZorNoTE+baRxRUXGd14MSnOZ
7f00/E3omjRMm4+QutmiXL/iVARNYwdy2dYeeJfEFEw05l/YFjb/ozMjWIYvepEp
sxxtaxuSTPnMMlMfbhb/EvpvxnCTw6SZBbz1mA9i48ex3VT2VFmuRBiAZa56pptU
ghF4LeMhxmj2guc/G14To3VFc9Pj/Xd8qqMtk1E7n3Wg5ESd41ocFN6frav5MNDM
PoyemIa86Z86d/dxlAd7GLMBDSrKN3Sgk/ENbUNyCIdCsFWIX9FPvipigZliiO9X
KeMS5zAVqou8Cfq16VqtlsjIRq7cd0JwRWqzI3AvhMCyZz1FBVaQAe002grrs+TS
60ozbevL9AbtaCYvMIS4zE5kQAvbpPz6MWrwJMcv5NFbWLTB1+iHBkd9AB3N7Q4u
ba/fY8RB244bmu37+vgSunkamEmRHLoGx8byUTUXtKP0Yc0lFvartdRjQncS2qlZ
bzYhvTlR8QOJMgE+7Qf6aQhG0kwOMOrWN6IdIUGo8I5tTscZ+wtlICfiaH2/kEcw
RBngwj4bI80CX0bZT6gV
=f9JF
-----END PGP SIGNATURE-----
