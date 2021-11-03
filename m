X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7031" "Wednesday" "3" "November" "2021" "15:24:55" "+0100" "Daniel Lee" "daniel@grafana.com" nil "182" "[oss-security] CVE-2021-41174 Grafana XSS vulnerability" nil nil nil "11" nil nil (number mark "U       daniel@grafa Nov  3  182/7031  " thread-indent "\"[oss-security] CVE-2021-41174 Grafana XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41174 Grafana XSS vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24388 invoked by uid 550); 3 Nov 2021 14:31:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17887 invoked from network); 3 Nov 2021 14:25:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grafana.com; s=g1;
        h=mime-version:from:date:message-id:subject:to;
        bh=9D3DOXMoRJSY+lKwpJ7Fp564PJNHXwIqntyNGdKkkdc=;
        b=eq3XoCQVC35K1FeTuZS19ldDlbCkTSjrPA5IRWmn6Zw+vB4Hy5+85mwiaKQTVSgXAa
         ljhzesa3/JIUersuP0/zFSnpbie09GCPlqJuIMkk3Ipg58dBzvRL11AqhbAoNADpbIuF
         G8dTfYBec2vS82dywdfCdlo094klWvfJaMB5cf5eSzAYQs7hdMqFnoAIO8Z4XXZwkMbl
         lA84XOtd02QN10qC/NonRRfQsP0J3XULEHHIK/VIFCDvb0XI0BuDi7uHoUSrhJQPWRm/
         UBUyMwXnCbT+GUn5s4ZOhrFF/hdJ5bQGI8OsUDjR+rfjY3XShCMF233rhy2UdaoYo0sZ
         YMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9D3DOXMoRJSY+lKwpJ7Fp564PJNHXwIqntyNGdKkkdc=;
        b=VqG5NAVNQuTYtWR8oUgiEP7eEQjwygcHaN/VPBDq9Sy+3yTI7YgWOk5E9g3v5st/Xl
         i4AsAh+ZRHuGI/ERSBXGPjOxGMbWgkuKYwdM/fpl3kvjgs+50eqFs/fABprzvI+VJwAO
         jejK0R92ZGWkgu2+wFUcy9CncrbvwQvTpTrjE6fVb6VTMvywvztdSFHa4/nEmBRiRctS
         QYkLBwkvKzB4+W2IzScHXCB+knkGXoBPRK8cgviUo50sWZvn65EgRCvE5G3pHqJ53OrX
         aUAuQ2JBKnupF890/BnRVSTiR15RcPtJDaMj+3w0tK+zy3A9OLfgoAIDGgd2+MKp+5Q5
         aBUA==
X-Gm-Message-State: AOAM53129LRZ0X3VlF+TQGBtxYA1vzPddCPBAmPXpR+VGSzcSNZ5RckG
	1TEkdrpq5m6vFsYbDjl9lNGUDlbaxO8POKrsV6GN/N0hGjYJXw==
X-Google-Smtp-Source: ABdhPJwlS3CMS0CgjfH9eA7e2DkfXyZbMStJsmkeTZq1qx87t+fvVBPksSGZ4I3GinltMso3xS/uALwHLr+DJwWPSVE=
X-Received: by 2002:a25:6b4e:: with SMTP id o14mr21098518ybm.86.1635949506302;
 Wed, 03 Nov 2021 07:25:06 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Lee <daniel@grafana.com>
Date: Wed, 3 Nov 2021 15:24:55 +0100
Message-ID: <CAD7TOkzbi4foTWrCYt9_H1C=khRXDVCER7aZYuQ11qTQXMzSBA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000031b95205cfe32dae"
Subject: [oss-security] CVE-2021-41174 Grafana XSS vulnerability

--00000000000031b95205cfe32dae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Today we are releasing Grafana 8.2.3. This patch release includes an
important security fix for an issue that affects all Grafana versions from
8.0.0-beta1.

[Grafana Cloud](https://grafana.com/cloud) instances have already been
patched and an audit did not find any usage of this attack vector. [Grafana
Enterprise](https://grafana.com/products/enterprise) customers were
provided with updated binaries under embargo.

## CVE-2021-41174 XSS vulnerability on unauthenticated pages

### Summary

CVSS Score: 6.9 Medium
CVSS:[CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:C/C:L/I:H/A:N/E:U/RL:O/RC:R/CR:L/MAV:N=
/MAC:H/MPR:N/MUI:R/MS:C/MC:N/MI:H/MA:L](
https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:C/=
C:L/I:H/A:N/E:U/RL:O/RC:R/CR:L/MAV:N/MAC:H/MPR:N/MUI:R/MS:C/MC:N/MI:H/MA:L
)

We received a security report to security@grafana.com on 2021-10-21 about a
vulnerability in Grafana regarding the XSS vulnerability.

It was later identified as affecting Grafana versions from 8.0.0-beta1 to
8.2.2. [CVE-2021-41174](
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-41174) has been
assigned to this vulnerability.

### Impact

If an attacker is able to convince a victim to visit a URL referencing a
vulnerable page, arbitrary JavaScript content may be executed within the
context of the victim's browser.

The user visiting the malicious link must be unauthenticated and the link
must be for a page that contains the login button in the menu bar.

There are two ways an unauthenticated user can open a page in Grafana that
contains the login button:
- Anonymous authentication is enabled. This means all pages in Grafana
would be open for the attack.
- The link is to an unauthenticated page. The following pages are
vulnerable:
  - `/dashboard-solo/snapshot/*`
  - `/dashboard/snapshot/*`
  - `/invite/:code`

The url has to be crafted to exploit AngularJS rendering and contain the
interpolation binding for AngularJS expressions. AngularJS uses double
curly braces for interpolation binding: {{ }}

An example of an expression would be:
`{{constructor.constructor(=E2=80=98alert(1)=E2=80=99)()}}`. This can be in=
cluded in the
link URL like this:

https://play.grafana.org/dashboard/snapshot/%7B%7Bconstructor.constructor('=
alert(1)')()%7D%7D?orgId=3D1

When the user follows the link and the page renders, the login button will
contain the original link with a query parameter to force a redirect to the
login page. The URL is not validated and the AngularJS rendering engine
will execute the JavaScript expression contained in the URL.

### Attack audit

We can not guarantee that the below will identify all attacks, so if you
find something using the audit process described below, you should consider
doing a full assessment.

#### Through reverse proxy/load balancer logs

To determine if your Grafana installation has been exploited for this
vulnerability, search through your reverse proxy/load balancer access logs
for instances where the path contains `{{` followed by something that would
invoke JavaScript code. For example, this could be code that attempts to
show a fake login page or to steal browser or session data. The [OWASP
cheat sheet](
https://cheatsheetseries.owasp.org/cheatsheets/XSS_Filter_Evasion_Cheat_She=
et.html)
has several examples of XSS attacks.

#### Through the Grafana Enterprise audit feature

If you enabled =E2=80=9CLog web requests=E2=80=9D in your configuration with
`router_logging =3D true`, look for requests where `path` contains `{{`
followed by something that would invoke JavaScript code.

### Patched versions

Release 8.2.3:

- [Download Grafana 8.2.3](https://grafana.com/grafana/download/8.2.3)
- [Release notes](
https://grafana.com/docs/grafana/latest/release-notes/release-notes-8-2-3/)

### Solutions and mitigations

Download and install the appropriate patch for your version of Grafana.

[Grafana Cloud](https://grafana.com/cloud) instances have already been
patched, and [Grafana Enterprise](https://grafana.com/products/enterprise)
customers were provided with updated binaries under embargo.

### Workaround

If for some reason you cannot upgrade, you can use a reverse proxy or
similar to block access to block the literal string `{{` in the path.

Example of an Nginx rule to block the literal string `{{`:

```
location ~ \{\{ {
    deny all;
}
```
### Timeline and postmortem

Here is a detailed timeline starting from when we originally learned of the
issue. All times in UTC.

* 2021-10-21 23:13: Security researcher sends the initial report about an
XSS vulnerability.
* 2021-10-21 23:13: Confirmed to be reproducible in at least versions 8.0.5
and 8.2.2.
* 2021-10-22 02:02 MEDIUM severity declared.
* 2021-10-22 09:22: it is discovered that Grafana instances with anonymous
auth turned on are vulnerable. This includes https://play.grafana.org/ .
* 2021-10-22 09:50: Anonymous access disabled for all instances on Grafana
Cloud as a mitigation measure.
* 2021-10-22 11:15: Workaround deployed on Grafana Cloud that blocks
malicious requests.
* 2021-10-22 12:35: Enabled anonymous access for instances on Grafana
Cloud.
* 2021-10-22 12:51: All instances protected by the workaround. From this
point forward, Grafana Cloud is no longer affected.
* 2021-10-22 14:05 Grafana Cloud instances updated with a fix.
* 2021-10-22 19:23 :Determination that no weekend work is needed as the
issue is of MEDIUM severity and the root cause has been identified.
* 2021-10-25 14:13: Audit of Grafana Cloud concluded, no evidence of
exploitation.
* 2021-10-27 12:00: Grafana Enterprise images released to customers under
embargo.
* 2021-11-03 12:00: Public release.

## Reporting security issues

If you think you have found a security vulnerability, please send a report
to [security@grafana.com](mailto:security@grafana.com). This address can be
used for all of
Grafana Labs' open source and commercial products (including but not
limited to Grafana, Tempo, Loki, k6, Tanka, and  Grafana Cloud, Grafana
Enterprise, and grafana.com). We only accept vulnerability reports at this
address. We would prefer that you encrypt your message to us using our PGP
key. The key fingerprint is:

F988 7BEA 027A 049F AE8E  5CAA D125 8932 BE24 C5CA

The key is available from [ keyserver.ubuntu.com](
https://keyserver.ubuntu.com/pks/lookup?op=3Dget&fingerprint=3Don&search=3D=
0xD1258932BE24C5CA)
by searching for [security@grafana](
https://keyserver.ubuntu.com/pks/lookup?search=3Dsecurity@grafana&fingerpri=
nt=3Don&op=3Dindex
).

## Security announcements

There is a Security [category](https://grafana.com/tags/security/) on the
Grafana blog where we will post a summary, remediation, and mitigation
details for any patch containing security fixes and you can subscribe to
updates from our [Security Announcements RSS feed](
https://grafana.com/tags/security/index.xml).

Regards,
Daniel Lee, Grafana Labs

--00000000000031b95205cfe32dae--
