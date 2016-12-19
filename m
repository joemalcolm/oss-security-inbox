X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["23726" "Monday" "19" "December" "2016" "09:27:29" "+0000" "Luke Hinds" "lhinds@redhat.com" "<65c18a57-739f-d5e0-ce01-aba4573707a3@redhat.com>" "461" "[oss-security] [OSSN-0074] Nova metadata service should not be used for sensitive information" nil nil nil "12" "2016121909:27:29" "[oss-security] [OSSN-0074] Nova metadata service should not be used for sensitive information" (number mark "U       lhinds@redha Dec 19  461/23726 " thread-indent "\"[oss-security] [OSSN-0074] Nova metadata service should not be used for sensitive information\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24356 invoked by uid 550); 19 Dec 2016 09:53:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11288 invoked from network); 19 Dec 2016 09:27:43 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=0eZfcnbvVnkZARyJIIKRkZ9Ta+ULqUo64xEryXxvIC4=;
        b=qlVAZjHT1F7uF4l7V6hAajLMiiPOPiIx1wdXgcMoxGrkQ/yoEFn5S+7InG/bLpci1q
         N7Nj7bpLmXualC7a7WicA3E5nHRG/d8C/ZPJMu/SJo+b4yTTTCdh3X15UTnn1xc6vUqS
         mzCuwIIeZ4lhmsMa9q0qB4jgUnUDE0IqSlrCpDtVKKy9BP+W6RXRC9Ui7ioCJgCFY4g9
         1jvzkZmrsNaK6ej00vfhOa1zQAUo8N0vqwWB/SbUrCgGZXgL62pEGpUEQ7o0cJuszIZd
         7PDNF4iF+UUDcracXJm7DtiZi+w/MOhPelDd+lC0wfUDGWswo+sInX3yRQxsXWsgHnCn
         I3JA==
X-Gm-Message-State: AIkVDXJS/xLpxJMKJPJlIuP8oWqoM8Bmj0cjLe9YUyod+NyuElEen/PWzL1Jva8zHposYC7h
X-Received: by 10.28.45.142 with SMTP id t136mr14374347wmt.110.1482139651085;
        Mon, 19 Dec 2016 01:27:31 -0800 (PST)
To: oss-security@lists.openwall.com
From: Luke Hinds <lhinds@redhat.com>
Message-ID: <65c18a57-739f-d5e0-ce01-aba4573707a3@redhat.com>
Date: Mon, 19 Dec 2016 09:27:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Rx25PLdKftmOlAro64EolQcEPg0AcedDO"
Subject: [oss-security] [OSSN-0074] Nova metadata service should not be used for sensitive
 information

--Rx25PLdKftmOlAro64EolQcEPg0AcedDO
Content-Type: multipart/mixed; boundary="6DQj7O6tLbQ79cpQrVpCbA3sBlrNGQEwq";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <65c18a57-739f-d5e0-ce01-aba4573707a3@redhat.com>
Subject: [OSSN-0074] Nova metadata service should not be used for sensitive
 information

--6DQj7O6tLbQ79cpQrVpCbA3sBlrNGQEwq
Content-Type: multipart/mixed;
 boundary="------------EBB7B0F8D02A6B7D7EBD969F"

This is a multi-part message in MIME format.
--------------EBB7B0F8D02A6B7D7EBD969F
Content-Type: multipart/alternative;
 boundary="------------F719A965569C63FB675D4283"


--------------F719A965569C63FB675D4283
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Openstack Security Note: 0074

Nova metadata service should not be used for sensitive information

---

### Summary ###
A recent security report has highlighted how users may be using the
metadata service to store security sensitive information.

The Nova metadata service should not be considered a secure repository
of confidential information required by compute instances.

### Affected Services / Software ###
Nova, All Versions

### Discussion ###
A recent vulnerability report for Nova stated that the metadata service
will obey the `X-Forwarded-For` HTTP header. This header is often
supplied by proxies so that the end service can identify which IP the
request originated from.

The Nova metadata service typically uses the source IP address of the
incoming request to respond with the appropriate data for the compute
instance making the request. This is a sort of weak authentication,
designed to ensure that metadata for one tenant isn't accidentally
provided to another.

If the request contains a `X-Forwarded-For` HTTP header then the
metadata service will use that for the source authentication rather than
the actual TCP/IP source.

An attacker with access to a compute instance in the cloud could send a
request to the metadata service and include the `X-Forwarded-For` header
in order to effectively spoof their source and cause the metadata
service to provide information that should not have been provided to
that instance.

Consider the following:
Alice creates a compute instance. She places the root password for that
instance in the metadata service. The instance is assigned a 10.1.2.2
IP address. Alice believes that the root password for her instance is
safe within the metadata service.

Alice retrieves metadata by running a command similar to:
`curl http://169.254.169.254/latest/meta-data
<http://169.254.169.254/latest/meta-data>`
this will retrieve any metadata stored for Alice's compute instance,
which has an IP address of 10.1.2.2

Bob has a compute instance with IP address 10.1.9.9 however Bob wants
access to the metadata for Alice's compute instance. If Bob runs a
similar command to Alice, but includes a customer header as below, he
will get access to all of Alice's metadata, including the root password
she chose to store there:
`curl -H "X-Forwarded-For:
10.1.2.2" http://169.254.169.254/latest/meta-data
<http://169.254.169.254/latest/meta-data>`

The Nova metadata service is a useful utility within OpenStack but
clearly not intended as a strongly authenticated system for storing
sensitive data such as private keys or passwords.

### Recommended Actions ###
The metadata service should not be used to store sensitive information.

The IP forwarding issue is not a defect of itself, it exists to allow
the metadata service to provide IP addresses for instances that are
behind a proxy as may be the case in more complex deployments.

Cloud users who have a requirement to store sensitive information that
compute instances require for operation should instead look to the
Config drive to provide this service. It's operation is much more
tightly bound to individual compute instances.

Where use of config drive is not an option, operators should consider
other mitigations such as placing a proxy in front of the metadata service
which can filter out these sorts of malicious activities.

### Contacts / References ###
Author: Robert Clark, IBM
This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0074
Original LaunchPad Bug : https://bugs.launchpad.net/nova/+bug/1563954
<https://bugs.launchpad.net/nova/+bug/1563954>
Mailing List : [Security] tag on openstack-dev@lists.openstack.org
OpenStack Security Group : https://launchpad.net/~openstack-ossg
<https://launchpad.net/%7Eopenstack-ossg>
Config Drive
: http://docs.openstack.org/user-guide/cli-config-drive.html
<http://docs.openstack.org/user-guide/cli-config-drive.html>


--------------F719A965569C63FB675D4283
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8=
">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>
    </p>
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <p> </p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">Openstack Security Note:
        0074<br>
      </p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">Nova metadata service
        should not be used for sensitive information<br>
      </p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);"> ---</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">### Summary ###<br>
        A recent security report has highlighted how users may be using
        the<br>
        metadata service to store security sensitive information.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">The Nova metadata service
        should not be considered a secure repository<br>
        of confidential information required by compute instances.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">### Affected Services /
        Software ###<br>
        Nova, All Versions</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">### Discussion ###<br>
        A recent vulnerability report for Nova stated that the metadata
        service<br>
        will obey the `X-Forwarded-For` HTTP header. This header is
        often<br>
        supplied by proxies so that the end service can identify which
        IP the<br>
        request originated from.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">The Nova metadata service
        typically uses the source IP address of the<br>
        incoming request to respond with the appropriate data for the
        compute<br>
        instance making the request. This is a sort of weak
        authentication,<br>
        designed to ensure that metadata for one tenant isn't
        accidentally<br>
        provided to another.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">If the request contains a
        `X-Forwarded-For` HTTP header then the<br>
        metadata service will use that for the source authentication
        rather than<br>
        the actual TCP/IP source.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">An attacker with access
        to a compute instance in the cloud could send a<br>
        request to the metadata service and include the
        `X-Forwarded-For` header<br>
        in order to effectively spoof their source and cause the
        metadata<br>
        service to provide information that should not have been
        provided to<br>
        that instance.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">Consider the following:<br>
        Alice creates a compute instance. She places the root password
        for that<br>
        instance in the metadata service. The instance is assigned a
        10.1.2.2<br>
        IP address. Alice believes that the root password for her
        instance is<br>
        safe within the metadata service.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">Alice retrieves metadata
        by running a command similar to:<br>
        `curl<span class=3D"Apple-converted-space">=C2=A0</span><a
          rel=3D"nofollow" href=3D"http://169.254.169.254/latest/meta-data"
          style=3D"color: rgb(0, 51, 170); text-decoration: none;">http://<=
wbr>169.254.<wbr>169.254/<wbr>latest/<wbr>meta-data</a>`<br>
        this will retrieve any metadata stored for Alice's compute
        instance,<br>
        which has an IP address of 10.1.2.2</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">Bob has a compute
        instance with IP address 10.1.9.9 however Bob wants<br>
        access to the metadata for Alice's compute instance. If Bob runs
        a<br>
        similar command to Alice, but includes a customer header as
        below, he<br>
        will get access to all of Alice's metadata, including the root
        password<br>
        she chose to store there:<br>
        `curl -H "X-Forwarded-For: 10.1.2.2"<span
          class=3D"Apple-converted-space">=C2=A0</span><a rel=3D"nofollow"
          href=3D"http://169.254.169.254/latest/meta-data" style=3D"color:
          rgb(0, 51, 170); text-decoration: none;">http://<wbr>169.254.<wbr=
>169.254/<wbr>latest/<wbr>meta-data</a>`</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">The Nova metadata service
        is a useful utility within OpenStack but<br>
        clearly not intended as a strongly authenticated system for
        storing<br>
        sensitive data such as private keys or passwords.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">### Recommended Actions
        ###<br>
        The metadata service should not be used to store sensitive
        information.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">The IP forwarding issue
        is not a defect of itself, it exists to allow<br>
        the metadata service to provide IP addresses for instances that
        are<br>
        behind a proxy as may be the case in more complex deployments.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">Cloud users who have a
        requirement to store sensitive information that<br>
        compute instances require for operation should instead look to
        the<br>
        Config drive to provide this service. It's operation is much
        more<br>
        tightly bound to individual compute instances.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">Where use of config drive
        is not an option, operators should consider<br>
        other mitigations such as placing a proxy in front of the
        metadata service<br>
        which can filter out these sorts of malicious activities.</p>
      <p style=3D"margin: 0px 0px 0.8em; padding: 0px; width: auto;
        max-width: 45em; color: rgb(51, 51, 51); font-family: monospace;
        font-size: 12px; font-style: normal; font-variant-ligatures:
        normal; font-variant-caps: normal; font-weight: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">### Contacts / References
        ###<br>
        Author: Robert Clark, IBM<br>
        This OSSN : <a class=3D"moz-txt-link-freetext"
          href=3D"https://wiki.openstack.org/wiki/OSSN/OSSN-0074">https://w=
iki.openstack.org/wiki/OSSN/OSSN-0074</a>
        <br>
        Original LaunchPad Bug :<span class=3D"Apple-converted-space">=C2=
=A0</span><a
          rel=3D"nofollow"
          href=3D"https://bugs.launchpad.net/nova/+bug/1563954"
          style=3D"color: rgb(0, 51, 170); text-decoration: none;">https:/<=
wbr>/bugs.launchpad<wbr>.net/nova/<wbr>+bug/1563954</a><br>
        Mailing List : [Security] tag on openstack-<wbr>dev@lists.<wbr>open=
stack.<wbr>org<br>
        OpenStack Security Group :<span class=3D"Apple-converted-space">=C2=
=A0</span><a
          rel=3D"nofollow" href=3D"https://launchpad.net/%7Eopenstack-ossg"
          style=3D"color: rgb(0, 51, 170); text-decoration: none;">https:/<=
wbr>/launchpad.<wbr>net/~openstack-<wbr>ossg</a><br>
        Config Drive :<span class=3D"Apple-converted-space">=C2=A0</span><a
          rel=3D"nofollow"
          href=3D"http://docs.openstack.org/user-guide/cli-config-drive.htm=
l"
          style=3D"color: rgb(0, 51, 170); text-decoration: none;">http://<=
wbr>docs.openstack.<wbr>org/user-<wbr>guide/cli-<wbr>config-<wbr>drive.html=
</a></p>
    </div>
  </body>
</html>

--------------F719A965569C63FB675D4283--

--------------EBB7B0F8D02A6B7D7EBD969F
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

--------------EBB7B0F8D02A6B7D7EBD969F--

--6DQj7O6tLbQ79cpQrVpCbA3sBlrNGQEwq--

--Rx25PLdKftmOlAro64EolQcEPg0AcedDO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYV6gBAAoJEPFlVhc8ICYU6fkIAMAUKZvw/nYANho33C2Z1ksU
OvFaCp6Xp9qcC6pSYLapChBNBdAxpNSEmTl3KOGpZNI+QmKsEKn5z8wKCq9B+uv5
49OJg5l0jzxTZK3i8OI53ngIxocLE0J5DCMFUeku+tyK/a+HOHQgWcnl+mEW7eNm
5Vqej0M8p5D94eWxzVSmy3nO+EfU0K0KCKLBkrIC42owp74Njn/hTYf7k8DQxUHa
T0SV1AjgIEgefDaLDrmpxPbSC2x0N969C7X4f3TvB30JUutZwacO717ZaD2s1G9l
444IFj26BHWGFoXY+BotcxXfiIW3EV6Z7HiQsUtXiw/ZvFQEi6m6sudtqQZtpD0=
=mVId
-----END PGP SIGNATURE-----

--Rx25PLdKftmOlAro64EolQcEPg0AcedDO--
