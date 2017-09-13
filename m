X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4622" "Wednesday" "13" "September" "2017" "21:08:31" "+0000" "Armis Security" "security@armis.com" "<CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>" "115" "[oss-security] Linux BlueBorne vulnerabilities" "^Date:" nil nil "9" "2017091321:08:31" "[oss-security] Linux BlueBorne vulnerabilities" (number mark "        security@arm Sep 13  115/4622  " thread-indent "\"[oss-security] Linux BlueBorne vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24065 invoked by uid 550); 13 Sep 2017 23:18:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11671 invoked from network); 13 Sep 2017 21:08:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=armis.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZFr71eAz2ZMDfZOMAl4JYNsONbc/F22ogbeUCc25Mnw=;
        b=KdGVOZtBT9QS4rNvLkCZZ683Bd804sZLgw7kPdGwn8uNSRtxbzB/ng5GUZI+XkE/xh
         OOZ4fqphmHZkAe31ZFqHpLtlD/1N4aubXVz7CNn6d1sh/aon/2liTpnwFZ/hvMxO20ze
         zlPXelMNE1xElDO6YicfiWbWIs/FpEW/3hArI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZFr71eAz2ZMDfZOMAl4JYNsONbc/F22ogbeUCc25Mnw=;
        b=mGtQwskQt774fk8PIXykmWrZHRRaG8oCxAAwuZ5k/zMiTZcIYgRhLukrkL5c9cbneE
         w+V/hdaPEDuk+tkdjhz1FlISLDd9QzGg9BOsEv/yJHLV6F4z7N1ZWycGssp7Bq2Sn4kM
         N5Nh61OJthKqb40tDJ2zJGit4qaGnORzXDS4E92hy62FCO7ikjXBpreQShCgDeGs6pUt
         zEalWm2dlOIslW1FlVL5fPPfgMXoZZQVF5DNllLKxb1uj6tVZxIITioV3YYmtIOs0Iv7
         L68Eku5EgT4zapvLxO5gx3kWMclKWXsLYgAdZSFw64iO4uOr6u8NUQhILaALdQycJBWq
         8vXA==
X-Gm-Message-State: AHPjjUgKCwHvLcZbo/wa2U4vg7nxp3Ne/PFwx60A5qIIR3v+G9F6lc4I
	obQ27JraebR30/tcGrQpaOgjudRGBvTLFIAroTuc3ByR
X-Google-Smtp-Source: AOwi7QBL+yBGFB8nl4mUY26M9VOcZSa/rDp7q8bb/HqcBTokp9FyTvxBOcDmjWtRueEHpZ0zGqCifm9jiUYZbNjfzgU=
X-Received: by 10.80.168.33 with SMTP id j30mr4718101edc.64.1505336921433;
 Wed, 13 Sep 2017 14:08:41 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403045c20c0783af8055918903d"
Date: Wed, 13 Sep 2017 21:08:31 +0000
From: Armis Security <security@armis.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux BlueBorne vulnerabilities
To: oss-security@lists.openwall.com

--f403045c20c0783af8055918903d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

We are writing to inform you of two security vulnerabilities we have found
in the Bluetooth stack in Linux (BlueZ).

These vulnerabilities have been made public yesterday (Sept. 12, 2017), and
are part of 8 vulnerabilities we have disclosed to various vendors (as a
group they are called "BlueBorne").

Both Linux-related vulnerabilities where disclosed to
distros@vs.openwall.org.
The kernel-related vulnerability (CVE-2017-1000251) was also disclosed to
security@kernel.org
Both disclosures began on Sept. 5, 2017, and patches were made available
yesterday and today.
I will link to these patches bellow.

1) CVE-2017-1000250
This vulnerability lies in the bluetoothd process, in the processing of
incoming requests in the SDP server. It is an information disclosure
vulnerability in the function service_search_attr_req (src/sdpd-request.c)
that handles incoming sdp search attribute requests. It can be triggered
without any user interaction in the victim=E2=80=99s machine and without an=
y prior
authentication (pairing), as it is part of stack=E2=80=99s Service discovery
protocol (SDP) server that is meant to be accessed prior to authentication.
This vulnerability can lead to a very large information disclosure from the
heap of the bluetoothd process, that can potentially hold critical
information including Bluetooth encryption keys, or other valuable data.

Here are the specifics of this vulnerability:
In the SDP server search attribute request handler
(service_search_attr_req, under src/sdpd-request.c), this flow exists:
...
} else {
/* continuation State exists -> get from cache */
sdp_buf_t *pCache =3D sdp_get_cached_rsp(cstate);
if (pCache) {
uint16_t sent =3D MIN(max, pCache->data_size -

 cstate->cStateValue.maxBytesSent);
pResponse =3D pCache->data;
memcpy(buf->data,
                             pResponse + cstate->cStateValue.maxBytesSent,
                             sent);
buf->data_size +=3D sent;
cstate->cStateValue.maxBytesSent +=3D sent;
if (cstate->cStateValue.maxBytesSent =3D=3D pCache->data_size)
cstate_size =3D sdp_set_cstate_pdu(buf, NULL);
else
cstate_size =3D sdp_set_cstate_pdu(buf, cstate);
} else {
status =3D SDP_INVALID_CSTATE;
SDPDBG("Non-null continuation state, but null cache buffer");
}
}
...

When a long response is returned to a specific search attribute request, a
continuation state is returned to allow reception of additional fragments,
via additional requests that contain the last continuation state sent.
However, the incoming =E2=80=9Ccstate=E2=80=9D that requests additional fra=
gments isn=E2=80=99t
validated properly, and thus an out-of-bounds read of the response buffer
(pResponse) can be achieved, leading to information disclosure of the heap.

A patch for this vulnerability was pushed today to BlueZ upstream:
https://git.kernel.org/pub/scm/bluetooth/bluez.git/commit/?id=3D9e009647b14=
e810e06626dde7f1bb9ea3c375d09

2) CVE-2017-1000251

This vulnerability is an RCE vulnerability in the Kernel's implementation
of Bluetooth's L2CAP (net/bluetooth/l2cap_core.c):

In l2cap_config_rsp this flow exists:
...
     case L2CAP_CONF_PENDING:
         set_bit(CONF_REM_CONF_PEND, &chan->conf_state);
         if (test_bit(CONF_LOC_CONF_PEND, &chan->conf_state)) {
             char buf[64];
             len =3D l2cap_parse_conf_rsp(chan, rsp->data, len,
                            buf, &result);
...
The function l2cap_parse_conf_rsp parses the configuration elements in the
configuration response (rsp->data), and copies them (after validating them)
to the output buffer (buf). The function does not receive a maximum length
of the output buffer, and this buffer is allocated on the stack of
l2cap_config_rsp. So sending a configuration response which contains a
large number of configuration elements (they can also be the same type of
element repeated multiple times) - would cause a stack overflow of the
output buffer (buf). Reaching this case (L2CAP_CONF_PENDING) is achievable
by sending a configuration request with an EFS element, and setting the
stype field to L2CAP_SERV_NOTRAFIC, prior to the crafted configuration
response that would trigger the stack overflow.

A patch for this vulnerability was pushed yesterday to upstream Linux
Kernel:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3De860d2c904d1a9f38a24eb44c9f34b8f915a6ea3



If you need any additional information on these issues we would be happy to
help.

Thank you,
Armis Labs

--f403045c20c0783af8055918903d--
