X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6775" "Tuesday" "5" "October" "2021" "19:06:50" "+0200" "Richard Hartmann" "richih.mailinglist@gmail.com" nil "179" "[oss-security] CVE-2021-39226 Grafana snapshot authentication bypass" nil nil nil "10" nil nil (number mark "U       richih.maili Oct  5  179/6775  " thread-indent "\"[oss-security] CVE-2021-39226 Grafana snapshot authentication bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39226 Grafana snapshot authentication bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30145 invoked by uid 550); 5 Oct 2021 17:18:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17974 invoked from network); 5 Oct 2021 17:07:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=lPC1PxaPfHn970pNmsgdNn4KhxAxBatq8w+qTLr06vs=;
        b=HfCLeRfK9n577fDwUyloCVvJU4T0lz+PRP3DzUGpYiRDVm6rBYlwhFjhIZTSNR3A/j
         hxPNpEJg/3+uBcbZuP7ZH5o8GVnBtvPzK7Lxwj5FoMK+L7D7Aiy8QrQPYIEHJLl7pUsZ
         NeuBcGiQbDGXLczwhhqz9b9EGLVNAri5UhZXTdvogdijGrv2fjKuE2NFy3OMEv4zt2df
         NAqzCFTH9Ipp24+fL2lKkru0cTRBZ87U/vS7KDvUZLw5jETkqtWsKOpYDy6m9fS7ZV58
         NnKmXCNuW6P8cOm3ijPkWQ95yJS1MkgNIff6SrheVZaQGmTGNMYwWg5vJsHVDzvWyirc
         IBFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=lPC1PxaPfHn970pNmsgdNn4KhxAxBatq8w+qTLr06vs=;
        b=Q7BZJtZZDvlkY4HPc3xlEFuLB16SMQT9LwMOjBs++rqQLFxOjlmfj1FqLGH3E6Gw1e
         mqnk4zsKd+ENa3b64H/MW36WRM/ARoKv23cLmgvk5OTgu010ZyFzqoLsBdwIfiob+yJN
         Rsd6X7yMyLxeS3nVxyHQR2IswtciCRf5gTh/OUuWC61Ucx0Loj2YtOjdck8MUP/Ao3TW
         yBClCc9bCQ//UUyd+7zCJkEe8wGx6tirMnu60A7D/3hEm9KJz0t3KwH8VIPAWzvMZQ0i
         laWvwIQd1Q5+YH1opEiT8mfpV89MS7owcWhD9ZVkO1N8N7MI4K+aiY2NnakimMweRguT
         Pn8Q==
X-Gm-Message-State: AOAM530oy9M5pbdt/d3puZT+2g4wBIkc9QKd913FoUnxyE5ZG2Xrs/9d
	+lZBL3AYkn9Efg/I/sD61aaeDdjGYUSwC2J4u30E2q0QehM=
X-Google-Smtp-Source: ABdhPJyYzGu78oBb3cYNqh02Lro36rCTdegKNw0ZnYC0CxlQS7hhELux5za7+kAjxjc0B89JDCTOksV1oC6PyZbkomQ=
X-Received: by 2002:a17:902:b18b:b0:13a:354a:3e9d with SMTP id
 s11-20020a170902b18b00b0013a354a3e9dmr6320715plr.36.1633453621488; Tue, 05
 Oct 2021 10:07:01 -0700 (PDT)
MIME-Version: 1.0
From: Richard Hartmann <richih.mailinglist@gmail.com>
Date: Tue, 5 Oct 2021 19:06:50 +0200
Message-ID: <CAD77+gSO06wYpEokxsJ0p01-cDay=v7eX-ugTKKjCqPkkx3V0Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2021-39226 Grafana snapshot authentication bypass

Today we are releasing Grafana 7.5.11, and 8.1.6. These patch releases
include an important security fix for an issue that affects all
Grafana versions from 2.0.1.

[Grafana Cloud](https://grafana.com/cloud) instances have already been
patched and an audit did not find any usage of this attack vector.
[Grafana Enterprise](https://grafana.com/products/enterprise)
customers were provided with updated binaries under embargo.

8.1.5 contained a single fix for bar chart panels. We believe that
users can expedite deployment by moving from 8.1.4 to 8.1.6 directly.

## CVE-2021-39226 Snapshot authentication bypass

### Summary

CVSS Score: 9.8 Critical
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

We received a security report to
[security@grafana.com](mailto:security@grafana.com) on 2021-09-15
about a vulnerability in Grafana regarding the snapshot feature. It
was later identified as affecting Grafana versions from 2.0.1 to
8.1.6. [CVE-2021-39226](https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCV=
E-2021-39226)
has been assigned to this vulnerability.

### Impact
Unauthenticated and authenticated users are able to view the snapshot
with the lowest database key by accessing the literal paths:

* `/dashboard/snapshot/:key`, or
* `/api/snapshots/:key`

If the snapshot "public_mode" configuration setting is set to true (vs
default of false), unauthenticated users are able to delete the
snapshot with the lowest database key by accessing the literal path:

* `/api/snapshots-delete/:deleteKey`

Regardless of the snapshot "public_mode" setting, authenticated users
are able to delete the snapshot with the lowest database key by
accessing the literal paths:

* `/api/snapshots/:key`, or
* `/api/snapshots-delete/:deleteKey`

The combination of deletion and viewing enables a complete walk
through all snapshot data while resulting in complete snapshot data
loss.

### Attack audit

While we can not guarantee that the below will identify all attacks,
if you do find something with the below, you should consider doing a
full assessment.

#### Through reverse proxy/load balancer logs

To determine if your Grafana installation has been exploited for this
vulnerability, search through your reverse proxy/load balancer access
logs for instances where the path is `/dashboard/snapshot/:key`,
`/api/snapshots/:key` or `/api/snapshots-delete/:deleteKey`, and the
response status code was 200 (OK).
For example, if you=E2=80=99re using the Kubernetes ingress-nginx controller
and sending logs to Loki, use a LogQL query like
`{job=3D"nginx-ingress-controller"} |=3D "\"status\": 200" |=3D "\"uri\":
\"/api/snapshots/:key\""`.

#### Through the Grafana Enterprise audit feature

If you enabled =E2=80=9CLog web requests=E2=80=9D in your configuration with
`router_logging =3D true`, look for
`"requestUri":"/api/snapshots-delete/=E2=80=9D`,`=E2=80=9CrequestUri":"/api=
/snapshots/:key"`,
or `"type":"snapshot"` in combination with `"action":"delete"`.

### Patched versions

Release 8.1.6:

- [Download Grafana 8.1.6](https://grafana.com/grafana/download/8.1.6)
- [Release notes](https://grafana.com/docs/grafana/latest/release-notes/rel=
ease-notes-8-1-6/)

Release 7.5.11:

- [Download Grafana 7.5.11](https://grafana.com/grafana/download/7.5.11)
- [Release notes](https://grafana.com/docs/grafana/latest/release-notes/rel=
ease-notes-7-5-11/)

### Solutions and mitigations

Download and install the appropriate patch for your version of Grafana.

[Grafana Cloud](https://grafana.com/cloud) instances have already been
patched, and [Grafana
Enterprise](https://grafana.com/products/enterprise) customers were
provided with updated binaries under embargo.

### Workaround

If for some reason you cannot upgrade:

You can use a reverse proxy or similar to block access to the literal paths
* `/api/snapshots/:key`
* `/api/snapshots-delete/:deleteKey`
* `/dashboard/snapshot/:key`
* `/api/snapshots/:key`

They have no normal function and can be disabled without side effects.

### Timeline and postmortem

Here is a detailed timeline starting from when we originally learned
of the issue. All times in UTC.

* 2021-09-15 14:49: Tuan Tran theblackturtle0901@gmail.com sends
initial report about viewing snapshots without authentication
* 2021-09-15 15:56: Initial reproduction
* 2021-09-15 17:10: MEDIUM severity declared
* 2021-09-15 18:58: Workaround deployed on Grafana Cloud
* 2021-09-15 19:15: `/api/snapshots/:key` found to be vulnerable as well
* 2021-09-15 19:30: `/api/snapshots/:key` blocked on Grafana Cloud
* 2021-09-16 09:31: `/api/snapshots-delete/:deleteKey` found to be
vulnerable as well, blocked on Grafana Cloud. From this point forward,
Cloud is not affected any more.
* 2021-09-16 09:35: HIGH severity declared
* 2021-09-16 11:19: Realization that combination of deletion and
viewing allows enumeration and permanent DoS
* 2021-09-16 11:19: CRITICAL declared
* 2021-09-17 10:53: Determination that no weekend work is needed.
While issue is CRITICAL, scope is very limited
* 2021-09-17 14:26: Audit of Grafana Cloud concluded, no evidence of
exploitation
* 2021-09-23: Grafana Cloud instances updated
* 2021-09-28 12:00: Grafana Enterprise images released to customers
under embargo
* 2021-10-05: Public release

## Reporting security issues

If you think you have found a security vulnerability, please send a
report to [security@grafana.com](mailto:security@grafana.com). This
address can be used for all of
Grafana Labs's open source and commercial products (including but not
limited to Grafana, Tempo, Loki, Amixr, k6, Tanka, and  Grafana Cloud,
Grafana Enterprise, and grafana.com). We only accept vulnerability
reports at this address. We would prefer that you encrypt your message
to us using our PGP key. The key fingerprint is:

F988 7BEA 027A 049F AE8E  5CAA D125 8932 BE24 C5CA

The key is available from
[keys.gnupg.net](http://keys.gnupg.net/pks/lookup?op=3Dget&fingerprint=3Don=
&search=3D0xD1258932BE24C5CA)
by searching for
[security@grafana](http://keys.gnupg.net/pks/lookup?search=3Dsecurity@grafa=
na&fingerprint=3Don&op=3Dindex.

## Security announcements

We maintain a category on the community site named [Security
Announcements](https://community.grafana.com/c/security-announcements),
where we will post a summary, remediation, and mitigation details for
any patch containing security fixes. You can also subscribe to email
updates to this category if you have a grafana.com account and sign in
to the community site, or via updates from our [Security Announcements
RSS feed](https://community.grafana.com/c/security-announcements.rss).

## Acknowledgement

We would like to thank [Tran Viet
Tuan](https://github.com/theblackturtle) for responsibly disclosing
the initially discovered vulnerability to us.


Best,
Richard
