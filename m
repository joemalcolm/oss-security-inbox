X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6923" "Thursday" "9" "December" "2021" "17:07:13" "+0100" "Daniel Lee" "daniel@grafana.com" nil "221" "[oss-security] CVE-2021-43798 Grafana directory traversal" nil nil nil "12" nil nil (number mark "U       daniel@grafa Dec  9  221/6923  " thread-indent "\"[oss-security] CVE-2021-43798 Grafana directory traversal\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-43798 Grafana directory traversal" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32245 invoked by uid 550); 9 Dec 2021 16:41:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9910 invoked from network); 9 Dec 2021 16:07:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grafana.com; s=g1;
        h=mime-version:from:date:message-id:subject:to;
        bh=ih5vuHckmzzCIKZo2h/oBkympgRHwJNaVM4vrI0qOHE=;
        b=nzScDKN2P3W4dhuRq5SDGkPw9zs4BB5y/ipQdzpnf8yS5SvqXzDg56+9VRD0ac23Kv
         K2NWYtlCyMX+JqotOe3OA3jc8C5isF9y3fkNOxX55eSCQTAGEAFfrVCm4vq5KMhSjOps
         zGkgqXh0jaGDpsKIu0+HwSEBt2f/sGWq5D6qEZD3QzyuGXq7lkXpDYRwI2OIxXkajPyf
         uqBPX5MjCAWwjywLLzegZ/yHmYsGbD4aMb/vYEHlJVeHIvjxYCau+rZLPk7Yv8lGm1j6
         sm3pE9ayGXSzlazxKRHQuWw696MYDZPBd2HzLQLixECV9zTvj5uoFZU3HwZKrtRB+N+Z
         cx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ih5vuHckmzzCIKZo2h/oBkympgRHwJNaVM4vrI0qOHE=;
        b=QZTTOT6Dcx3wDfZ79qL6g2QaFVBguA/NRgM9UEMyobRDhQJQ8zBqZRyuX+aYkUyPXQ
         kLPq7vZUYKpKBPw/FMH+x8JUG00+TEpU+iAIkme9HXrqXcXg0YbxEQN5yNmk7wHk2AVQ
         HjwgbnxVbGgcXYwWsoyP9lhVFnpfCO2zHHxKQ63djmzrGrBIBwQapDACcppJe1jNLhQ6
         H5mhtJ94lbhns0D4qqgnDYcKdbEd0zo84vqDx6N3UcwL5x1SM+CH0nQQraHooG6F2Wm+
         9dhtV88m6DhfKKZBRxFtTLArWkQWjk+4K8Cxnn9kzh5M4U670AboyHotd/pzXxy4RfzK
         BFwQ==
X-Gm-Message-State: AOAM532QAKGkvZve3QNlYap0N6HQl77x70i5WeQp4Teu+1E6QXjpc8tU
	QImLhSzJjcCDIRc3bbCy1HIPzFxZ79o0R7E12VBuH9OluqOZrQ==
X-Google-Smtp-Source: ABdhPJwpOmtso8Z7u+pTm6jXN6R0RYxeOg+ldzBCr7CsP2XS4IJpLEBj287OTpnop/StIXpe7Fj06Xm0nVJ9gxoTNwU=
X-Received: by 2002:a25:37cb:: with SMTP id e194mr7548644yba.449.1639066044280;
 Thu, 09 Dec 2021 08:07:24 -0800 (PST)
MIME-Version: 1.0
From: Daniel Lee <daniel@grafana.com>
Date: Thu, 9 Dec 2021 17:07:13 +0100
Message-ID: <CAD7TOkxcZ9v4jO_g8nUnBbcomxePoGhxLcRyDxP=Quo2hH4gFQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000555c7b05d2b8cd1d"
Subject: [oss-security] CVE-2021-43798 Grafana directory traversal

--000000000000555c7b05d2b8cd1d
Content-Type: text/plain; charset="UTF-8"

We released Grafana 8.3.1, 8.2.7, 8.1.8, 8.0.7 on December 7th. This patch
release includes a high severity security fix that affects Grafana versions
from v8.0.0-beta1 through v8.3.0.

Release v8.3.1, only containing a security fix:

- [Download Grafana 8.3.1](https://grafana.com/grafana/download/8.3.1)

- [Release notes](
https://grafana.com/docs/grafana/latest/release-notes/release-notes-8-3-1/)

Release v8.2.7, only containing a security fix:

- [Download Grafana 8.2.7](https://grafana.com/grafana/download/8.2.7)

- [Release notes](
https://grafana.com/docs/grafana/latest/release-notes/release-notes-8-2-7/)

Release v8.1.8, only containing a security fix:

- [Download Grafana 8.1.8](https://grafana.com/grafana/download/8.1.8)

- [Release notes](
https://grafana.com/docs/grafana/latest/release-notes/release-notes-8-1-8/)

Release v8.0.7, only containing a security fix:

- [Download Grafana 8.0.7](https://grafana.com/grafana/download/8.0.7)

- [Release notes](
https://grafana.com/docs/grafana/latest/release-notes/release-notes-8-0-7/)


## Path Traversal ([CVE-2021-43798](
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798))

### Summary

On 2021-12-03, we received a report that Grafana is vulnerable to directory
traversal, allowing access to local files. We have confirmed this for
versions 8.0.0-beta1 to 8.3.0. Thanks to our defense-in-depth approach, at
no time has [Grafana Cloud](https://grafana.com/cloud) been vulnerable.

The vulnerable URL path is: <grafana_host_url>/public/plugins/<plugin-id>/,
where <plugin-id> is the plugin ID for any installed plugin.

Every Grafana instance comes with pre-installed plugins like the Prometheus
plugin or MySQL plugin so the following URLs are vulnerable for every
instance:

* <grafana_host_url>/public/plugins/alertlist/

* <grafana_host_url>/public/plugins/annolist/

* <grafana_host_url>/public/plugins/barchart/

* <grafana_host_url>/public/plugins/bargauge/

* <grafana_host_url>/public/plugins/candlestick/

* <grafana_host_url>/public/plugins/cloudwatch/

* <grafana_host_url>/public/plugins/dashlist/

* <grafana_host_url>/public/plugins/elasticsearch/

* <grafana_host_url>/public/plugins/gauge/

* <grafana_host_url>/public/plugins/geomap/

* <grafana_host_url>/public/plugins/gettingstarted/

* <grafana_host_url>/public/plugins/grafana-azure-monitor-datasource/

* <grafana_host_url>/public/plugins/graph/

* <grafana_host_url>/public/plugins/heatmap/

* <grafana_host_url>/public/plugins/histogram/

* <grafana_host_url>/public/plugins/influxdb/

* <grafana_host_url>/public/plugins/jaeger/

* <grafana_host_url>/public/plugins/logs/

* <grafana_host_url>/public/plugins/loki/

* <grafana_host_url>/public/plugins/mssql/

* <grafana_host_url>/public/plugins/mysql/

* <grafana_host_url>/public/plugins/news/

* <grafana_host_url>/public/plugins/nodeGraph/

* <grafana_host_url>/public/plugins/opentsdb

* <grafana_host_url>/public/plugins/piechart/

* <grafana_host_url>/public/plugins/pluginlist/

* <grafana_host_url>/public/plugins/postgres/

* <grafana_host_url>/public/plugins/prometheus/

* <grafana_host_url>/public/plugins/stackdriver/

* <grafana_host_url>/public/plugins/stat/

* <grafana_host_url>/public/plugins/state-timeline/

* <grafana_host_url>/public/plugins/status-history/

* <grafana_host_url>/public/plugins/table/

* <grafana_host_url>/public/plugins/table-old/

* <grafana_host_url>/public/plugins/tempo/

* <grafana_host_url>/public/plugins/testdata/

* <grafana_host_url>/public/plugins/text/

* <grafana_host_url>/public/plugins/timeseries/

* <grafana_host_url>/public/plugins/welcome/

* <grafana_host_url>/public/plugins/zipkin/

We have received CVE-2021-43798 for this issue. The CVSS score for this
vulnerability is 7.5 High (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N)
for Grafana versions 8.0.0-beta1 to 8.3.0

### Affected versions with high severity

Grafana 8.0.0-beta1 to 8.3.0

### Solutions and mitigations

All installations between v8.0.0-beta1 and v8.3.0 should be upgraded as
soon as possible.

If you can not upgrade, running a reverse proxy in front of Grafana that
normalizes the PATH of the request will mitigate the vulnerability. For
example the normalize_path
<https://www.envoyproxy.io/docs/envoy/latest/api-v3/extensions/filters/network/http_connection_manager/v3/http_connection_manager.proto#envoy-v3-api-field-extensions-filters-network-http-connection-manager-v3-httpconnectionmanager-normalize-path>
setting in envoy.

Thanks to our defense-in-depth approach, [Grafana Cloud](
https://grafana.com/cloud) instances have not been affected by the
vulnerability.

As always, we closely coordinated with all cloud providers licensed to
offer Grafana Pro. They have received early notification under embargo and
confirmed that their offerings are secure at the time of this announcement.
In alphabetical order, this is applicable to Amazon Managed Grafana, and
Azure Managed Grafana.

### Timeline and postmortem

Here is a detailed timeline starting from when we originally learned of the
issue. All times in UTC.

* 2021-12-03: Security researcher sends the initial report

* 2021-12-03: Confirmed for 8.0.0-beta1 through 8.3.0

* 2021-12-03: Confirmed that Grafana Cloud is not vulnerable

* 2021-12-03: Security fix determined and committed to Git

* 2021-12-03: Release timeline determined: 2021-12-07 for private customer
release, 2021-12-14 for public release

* 2021-12-06: Second report about the vulnerability received

* 2021-12-07: We received information that the vulnerability has been
leaked to the public, turning it into a 0day

* 2021-12-07: Decision made to release as quickly as feasible

* 2021-12-07: Private release with two hour grace period

* 2021-12-07: Public release

## Reporting security Issues

If you think you have found a security vulnerability, please send a report
to [security@grafana.com](mailto:security@grafana.com). This address can be
used for all of

Grafana Labs' open source and commercial products (including but not
limited to Grafana, Grafana Cloud, Grafana Enterprise, and grafana.com). We
can accept only vulnerability reports at this address. We would prefer that
you encrypt your message to us by using our PGP key. The key fingerprint is

F988 7BEA 027A 049F AE8E  5CAA D125 8932 BE24 C5CA

The key is available from [keyserver.ubuntu.com](
https://keyserver.ubuntu.com/pks/lookup?search=0xF9887BEA027A049FAE8E5CAAD1258932BE24C5CA&fingerprint=on&op=index
).

## Security announcements

We maintain a [security category on our blog}(
https://grafana.com/tags/security/),

where we will always post a summary, remediation, and mitigation details
for any patch containing security fixes.

You can also subscribe to our [RSS feed](
https://grafana.com/tags/security/index.xml).

Regards,
Daniel Lee, Grafana Labs

--000000000000555c7b05d2b8cd1d--
