Received: (qmail 31772 invoked by uid 550); 22 Jan 2025 15:04:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14145 invoked from network); 22 Jan 2025 02:00:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737511245;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=/A2IQE4gvHcD6lsZ5LrgadpzM1hyMzUXMALdvDyBoUs=;
	b=OewQwnOsLVPhxSOP3L7JwjIyZq7HVQxD71gs26mXgGp3L1W0jqwuoTha1KoYwJCYIWiZea
	tvHWny0iex+P0grsgUJw9NLm6+6vKAHZwed+x1GStrOqSecj6zwvIT6MWi1agze5umwtYo
	luMLj3Ep43EHMfFpsMHmlhmoVN/mPZY=
X-MC-Unique: EtGBXgpNMGqKjffPMIzXwg-1
X-Mimecast-MFC-AGG-ID: EtGBXgpNMGqKjffPMIzXwg
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737511238; x=1738116038;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uo0bUZTCKiZ0M21m+N0ZZhhY+Iqv9oIy2V/4ctNyfE4=;
        b=DG/IwVS4UjcYv4X1ez035HR4JrORX9FMgGMYuQqEcpqhCexpSa1UV9GjbTQPYQL2KA
         vJoKT7ZL3r1mW9c0Evp7J7KXGrWbOBHW5u+KITV+E/RkPpGXI7CE/o5vb9EDeG7voBD/
         BejyW6RX7+1H7CyTDLfop2jNvAUrhAs7Y1kvZCh8NTSMlSEp9FtJYaaL3FgCRhrWJ0RJ
         +yo/LEDsyZSEXZ1XCXmr8C2ynJT4NNtAxppmsbV/n6Xw99OD7hqBcGUxhRxhkqMaKKS8
         a1f5m2SVDkXs5I3u3dXGoZeGGYwLD8GV1sRWiy1cpRNe0TSYwzISwxWCf93dUSx2DvQ/
         Xkjg==
X-Gm-Message-State: AOJu0YxRFHn2yvI7Kbji1SOBL/LUQcHA1TQ3VuN8/nouedl07ZSaR/0A
	qbGX3LlVKw6INOFmMDF10n7LfThU8YKsp6MI8uvnYkiESt648LYubSZ2DCfEhn3ir1Sy0PpHzvP
	YqRqM6ZGiE9Wiqx4GT9i62jPpMopIq+uudGWV6oIJY6N/G2xfx0IrbnwYQb6sOI1EXmx/IXfTjG
	mGe/7ZOtBqIOggwmZyxwBThZz7GQeIi/X0hwsXXqvfFKUvi52a+g==
X-Gm-Gg: ASbGncviagIKrvpWXnI+L825Przz1RNmsdVD72BPFT5kFmg+XpC/TZKQ9fjOeT3N+f8
	1jdybI7uV2p2ouhDc43PL5QKmVeZaGH88uCJpF92RAoKu5kS+Do/p5LSaX8QQaBRor8uswE722k
	N6a3wgUyrxUW3m26mb2LHNUpfEjxo2PwykbaYlXfu8yEiiqwYIlxirrE/j8n9dSbovlG3KRsRMc
	kaMwO7DF3QdgFl16P8CIcuYmYl3yXyz9LGIoJZnFwTuWPgK+QSWTQtVwa/T+aVTy4NHQr/xnw==
X-Received: by 2002:a05:6902:11c3:b0:e53:75ed:8321 with SMTP id 3f1490d57ef6-e57b1310762mr15556590276.35.1737511236952;
        Tue, 21 Jan 2025 18:00:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHU8rWnHN7sNFE5A43DGp0eUBjh0M54Yr45QUBFScOVDHIu0E/KtCCMjPH5TGYIxv1EnpqhQQ==
X-Received: by 2002:a05:6902:11c3:b0:e53:75ed:8321 with SMTP id 3f1490d57ef6-e57b1310762mr15556513276.35.1737511236093;
        Tue, 21 Jan 2025 18:00:36 -0800 (PST)
Message-ID: <24e58df0-1efb-4832-b71c-a8548c4cdae0@redhat.com>
Date: Tue, 21 Jan 2025 21:00:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Mark Michelson <mmichels@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _RZnakoafxeqWMB6hNLwJnTOjgnnvE39hNLSbp3mnjo_1737511239
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="------------hRzk9BgvHM1c7WdBg0TSDr2I"
Content-Language: en-US
Subject: [oss-security] Open Virtual Network egress access control list bypass.

--------------hRzk9BgvHM1c7WdBg0TSDr2I
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Note: This release had to be fast-tracked because the security issue was 
made public before an embargo could be lifted. We are awaiting a CVE 
assignment and will update this advisory with the CVE number once it is 
assigned.

Description
===========
Multiple versions of OVN (Open Virtual Network) are vulnerable to 
allowing crafted UDP packets to bypass egress access control list (ACL) 
rules. This can result in unauthorized access to virtual machines and 
containers running on the OVN network.

OVN provides rudimentary DNS caching as an optional feature to speed up 
lookups of frequently-used domains. When this feature is enabled, due to 
the OpenFlow rules that OVN installs in Open vSwitch, it is possible for 
an attacker to craft a UDP packet that can bypass egress ACL rules. 
Egress ACL rules are those that have the "direction" set to "to-lport".

The OVN installation is vulnerable if a logical switch has DNS records 
set on it AND if the same switch has any egress ACLs configured on it. 
The switch is considered to have egress ACLs configured if the switch 
has an egress ACL configured directly on it using the "acls" column of 
the logical switch. A switch is also considered to have egress ACLs 
configured if any of its logical switch ports are part of a port group 
that has egress ACLs configured in its "acls" column.

A python script (vuln_test.py) is attached to this advisory and can be 
used to determine if your installation is vulnerable. Run it in a 
location where "ovn-nbctl" is installed and can access the northbound 
database. The script will print to the console whether the installation 
is vulnerable.

Mitigation
==========
If the DNS records being used in OVN are accessible over the internet 
without using the built-in cache, then DNS caching can be disabled in 
OVN by clearing the "dns_records" column of all logical switches in the 
northbound database. Here is a command that can be used to accomplish this:

$ for s in $(ovn-nbctl list logical_switch | grep uuid | cut -f 2 -d 
':') ; do ovn-nbctl clear logical_switch "$s" dns_records ; done

Doing this will incur a latency penalty for DNS lookups since the lookup 
will be carried out over the internet instead of being looked up in a 
local cache.

If OVN's DNS caching is required on the deployment, then a second 
mitigation might be to adjust ACLs from being evaluated on egress to 
being evaluated on ingress. ACLs whose "direction" column is set to 
"to-lport" are evaluated on egress and are vulnerable to being bypassed 
if OVN's DNS caching is enabled. ACLs whose "direction" column is set to 
"from-lport" are evaluated on ingress and are not vulnerable to being 
bypassed if OVN's DNS caching is enabled. An ACL can be evaluated on 
ingress as long as it does not attempt to match on the "outport" field. 
Ingress ACLs are capable of matching based on the results of load 
balancing if "options:apply-after-lb" is set to "true".

There is no one-size fits all command line solution for changing egress 
ACLs to ingress ACLs. Each ACL rule will need to be evaluated and 
changed over if possible.

If DNS caching is required and egress ACLs are required, then the only 
mitigation is to adjust the topology of the virtual network so that DNS 
caching and egress ACLs are not on the same logical switch.

Fix
===
Patches to fix this vulnerability in currently supported versions of OVN 
are as follows:

* 22.03.x: 
https://github.com/ovn-org/ovn/commit/f22a1ba9c127795bebcfbd41d772bb071f893a6d
* 24.03.x: 
https://github.com/ovn-org/ovn/commit/70618a65fd49f1d1d5498927c0bed63e296dafb7
* 24.09.x: 
https://github.com/ovn-org/ovn/commit/249c52ad011cacb4c182dc64e88977ac7c61f668

The original patch is located at:
https://mail.openvswitch.org/pipermail/ovs-dev/2025-January/419993.html

Recommendation
==============
We recommend that users of OVN apply the linked patches, or upgrade to a 
known patched version of OVN. These include:

v22.03.8
v24.03.5
v24.09.2

Acknowledgments
===============

The OVN team wishes to thank the reporters:

      Marius Berntsberg - marius@redpill-linpro.com
      Trygve Vea - tv@redpill-linpro.com
      Tore Anderson - tore@redpill-linpro.com
      Rodolfo Alonso - ralonsoh@redhat.com
      Jay Faulkner (Openstack VMT) - jay@jvf.cc
      Brian Haley (Openstack/Neutron) - haleyb.dev@gmail.com

In addition, a special acknowledgment is due to the Firewall 
Misconfiguration security research team at the University of California, 
Riverside - firewallresearch@ucr.edu - 
https://firewall-research.cs.ucr.edu/misconfiguration/
--------------hRzk9BgvHM1c7WdBg0TSDr2I
Content-Type: text/x-python; charset=UTF-8; name="vuln_test.py"
Content-Disposition: attachment; filename="vuln_test.py"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9lbnYgcHl0aG9uMwoKaW1wb3J0IHN1YnByb2Nlc3MKaW1wb3J0IHNobGV4Cgoj
IFRoaXMgc2NyaXB0IHVzZXMgdGhlIGBvdm4tbmJjdGxgIGNvbW1hbmQgdG8gZGV0ZXJtaW5lIGlm
IHRoZSBkZXBsb3ltZW50IGlzCiMgdnVsbmVyYWJsZSB0byA8Q1ZFIG51bWJlcj4uIEl0IGRvZXMg
dGhpcyBieSBmaW5kaW5nIHRoZSBzZXQgb2YKIyBzd2l0Y2hlcyB0aGF0IGhhdmUgRE5TIHJlY29y
ZHMgYW5kIHRoYXQgaGF2ZSBlZ3Jlc3MgQUNMcy4gSWYgdGhpcyBzZXQgaGFzIGFueQojIG1lbWJl
cnMsIHRoZW4gdGhlIGRlcGxveW1lbnQgaXMgdnVsbmVyYWJsZS4KCgpkZWYgYnVpbGRfb2JqKHRl
eHQ6IHN0cik6CiAgICBvYmpzID0gZGljdCgpCiAgICBvYmogPSBkaWN0KCkKICAgIGN1cl91dWlk
ID0gTm9uZQogICAgZm9yIGxpbmUgaW4gdGV4dC5zcGxpdCgiXG4iKToKICAgICAgICBsaW5lID0g
bGluZS5zdHJpcCgpCiAgICAgICAgaWYgbGVuKGxpbmUpID09IDA6CiAgICAgICAgICAgIGlmIGN1
cl91dWlkOgogICAgICAgICAgICAgICAgb2Jqc1tjdXJfdXVpZF0gPSBvYmoKICAgICAgICAgICAg
b2JqID0gZGljdCgpCiAgICAgICAgICAgIGNvbnRpbnVlCiAgICAgICAga2V5LCBfLCB2YWx1ZSA9
IGxpbmUucGFydGl0aW9uKCI6IikKICAgICAgICBrZXkgPSBrZXkuc3RyaXAoKQogICAgICAgIHZh
bHVlID0gdmFsdWUuc3RyaXAoKQogICAgICAgIGlmIHZhbHVlLnN0YXJ0c3dpdGgoIlsiKToKICAg
ICAgICAgICAgdmFsdWUgPSB2YWx1ZVsxOi0xXQogICAgICAgICAgICB2YWx1ZSA9IFtpdGVtIGZv
ciBpdGVtIGluIHZhbHVlLnNwbGl0KCIsIildCiAgICAgICAgb2JqW2tleS5zdHJpcCgpXSA9IHZh
bHVlCiAgICAgICAgaWYga2V5ID09ICJfdXVpZCI6CiAgICAgICAgICAgIGN1cl91dWlkID0gdmFs
dWUKCiAgICByZXR1cm4gb2JqcwoKCmRlZiBidWlsZF9vYmpfZnJvbV9kYihjbWQ6IHN0cik6CiAg
ICBjbWRfbGlzdCA9IHNobGV4LnNwbGl0KGNtZCkKICAgIHN1YiA9IHN1YnByb2Nlc3MucnVuKGNt
ZF9saXN0LCBjYXB0dXJlX291dHB1dD1UcnVlKQogICAgcmV0dXJuIGJ1aWxkX29iaihzdWIuc3Rk
b3V0LmRlY29kZSgpKQoKCnN3aXRjaGVzID0gYnVpbGRfb2JqX2Zyb21fZGIoIm92bi1uYmN0bCBs
aXN0IGxvZ2ljYWxfc3dpdGNoIikKZG5zID0gYnVpbGRfb2JqX2Zyb21fZGIoIm92bi1uYmN0bCBm
aW5kIGRucyByZWNvcmRzIT17fSIpCmVncmVzc19hY2xzID0gYnVpbGRfb2JqX2Zyb21fZGIoIm92
bi1uYmN0bCBmaW5kIGFjbCBkaXJlY3Rpb249dG8tbHBvcnQiKQpwb3J0X2dyb3VwcyA9IGJ1aWxk
X29ial9mcm9tX2RiKCJvdm4tbmJjdGwgbGlzdCBwb3J0X2dyb3VwIikKCiMgQnVpbGQgdGhlIHNl
dCBvZiBzd2l0Y2hlcyB3aXRoIEROUyByZWNvcmRzCnN3aXRjaGVzX3dpdGhfZG5zID0gc2V0KCkK
Zm9yIHV1aWQsIHZhbHMgaW4gc3dpdGNoZXMuaXRlbXMoKToKICAgIGZvciByZWNvcmQgaW4gdmFs
c1siZG5zX3JlY29yZHMiXToKICAgICAgICBpZiByZWNvcmQgaW4gZG5zOgogICAgICAgICAgICBz
d2l0Y2hlc193aXRoX2Rucy5hZGQodXVpZCkKCiMgQnVpbGQgdGhlIHNldCBvZiBzd2l0Y2hlcyB3
aXRoIEFDTHMuIFN0ZXAgb25lIGlzIHNpbXBsZSwgZ2V0IHRoZSBzd2l0Y2hlcyB0aGF0CiMgZGly
ZWN0bHkgaGF2ZSBBQ0xzIHNldCBvbiB0aGVtLgpzd2l0Y2hlc193aXRoX2FjbHMgPSBzZXQoKQpm
b3IgdXVpZCwgdmFscyBpbiBzd2l0Y2hlcy5pdGVtcygpOgogICAgZm9yIHJlY29yZCBpbiB2YWxz
WyJhY2xzIl06CiAgICAgICAgaWYgcmVjb3JkIGluIGVncmVzc19hY2xzOgogICAgICAgICAgICBz
d2l0Y2hlc193aXRoX2FjbHMuYWRkKHV1aWQpCiAgICAgICAgICAgIGJyZWFrCgojIE5vdyB3ZSBu
ZWVkIHRvIGNoZWNrIGlmIGFueSBvZiB0aGUgc3dpdGNoZXMnIHBvcnRzIGJlbG9uZyB0byBhIHBv
cnQgZ3JvdXAgd2l0aAojIGFuIGVncmVzcyBBQ0wuIFN0YXJ0IGJ5IGNyZWF0aW5nIGEgbWFwIG9m
IHBvcnRzIHRvIHN3aXRjaGVzLiBUaGlzIHdheSwgd2hlbiB3ZQojIGNvbWUgYWNyb3NzIGEgcG9y
dCBpbiB0aGUgcG9ydCBncm91cCwgd2UgY2FuIGZpbmQgdGhlIHN3aXRjaCBlYXNpbHkuCnBvcnRf
c3dpdGNoX21hcCA9IGRpY3QoKQpmb3IgdXVpZCwgdmFscyBpbiBzd2l0Y2hlcy5pdGVtcygpOgog
ICAgZm9yIHBvcnQgaW4gdmFsc1sicG9ydHMiXToKICAgICAgICBpZiBub3QgcG9ydDoKICAgICAg
ICAgICAgY29udGludWUKICAgICAgICBwb3J0X3N3aXRjaF9tYXBbcG9ydF0gPSB1dWlkCgojIENy
ZWF0ZSBhIGZpbHRlcmVkIGRpY3Qgb2YgcG9ydCBncm91cHMgdGhhdCBoYXZlIGVncmVzcyBBQ0xz
Lgpwb3J0X2dyb3Vwc193aXRoX2VncmVzc19hY2xzID0gZGljdCgpCmZvciB1dWlkLCB2YWxzIGlu
IHBvcnRfZ3JvdXBzLml0ZW1zKCk6CiAgICBmb3IgcmVjb3JkIGluIHZhbHNbImFjbHMiXToKICAg
ICAgICBpZiByZWNvcmQgaW4gZWdyZXNzX2FjbHM6CiAgICAgICAgICAgIHBvcnRfZ3JvdXBzX3dp
dGhfZWdyZXNzX2FjbHNbdXVpZF0gPSB2YWxzCiAgICAgICAgICAgIGJyZWFrCgojIE5vdyBmaW5k
IHN3aXRjaGVzIHRoYXQgaGF2ZSBwb3J0cyBpbiB0aGUgcG9ydCBncm91cHMgd2l0aCBlZ3Jlc3Mg
QUNMcy4gQWRkCiMgdGhlc2UgdG8gdGhlIHN3aXRjaGVzX3dpdGhfYWNscyBzZXQuCmZvciB1dWlk
LCB2YWxzIGluIHBvcnRfZ3JvdXBzX3dpdGhfZWdyZXNzX2FjbHMuaXRlbXMoKToKICAgIGZvciBw
b3J0IGluIHZhbHNbInBvcnRzIl06CiAgICAgICAgaWYgcG9ydCBpbiBwb3J0X3N3aXRjaF9tYXA6
CiAgICAgICAgICAgIHN3aXRjaGVzX3dpdGhfYWNscy5hZGQocG9ydF9zd2l0Y2hfbWFwW3BvcnRd
KQoKIyBTd2l0Y2hlcyB3aXRoIEROUyBhbmQgZWdyZXNzIEFDTHMgbWVhbiB0aGUgc3lzdGVtIGlz
IHZ1bG5lcmFibGUuCmlmIHN3aXRjaGVzX3dpdGhfZG5zICYgc3dpdGNoZXNfd2l0aF9hY2xzOgog
ICAgcHJpbnQoIlRoaXMgaW5zdGFsbGF0aW9uIGlzIHZ1bG5lcmFibGUiKQplbHNlOgogICAgcHJp
bnQoIlRoaXMgaW5zdGFsbGF0aW9uIGlzIE5PVCB2dWxuZXJhYmxlIikK

--------------hRzk9BgvHM1c7WdBg0TSDr2I--

