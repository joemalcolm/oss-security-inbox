Received: (qmail 32430 invoked by uid 550); 23 May 2026 04:39:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23555 invoked from network); 23 May 2026 04:29:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Zhongxiang Wang <wangzx@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <08ab9b2f-39ff-4f80-d415-bf6bd32d86a7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 23 May 2026 04:29:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45249: Apache ECharts: XSS in Lines series tooltip
 rendering 

Severity: important=20

Affected versions:

- Apache ECharts (echarts) before 6.1.0

Description:

A cross-site scripting (XSS) vulnerability exists in Apache ECharts in the =
Lines series tooltip rendering logic.




This issue affects Apache ECharts: from before 6.1.0.

In versions prior to 6.1.0, if both Lines series=C2=A0and tooltip are used,=
 and no user-specified tooltip.formatter is provided, and series.data[i].na=
me is specified, raw HTML string series.data[i].name can be=C2=A0rendered t=
hrough innerHTML sink into tooltip content. Although tooltip is allowed to =
accept user-provided raw HTML via a custom tooltip.formatter, the built-in =
tooltip formatters conventionally perform HTML escaping automatically. This=
 case breaks that convention and=C2=A0may unexpectedly lead to script execu=
tion when tooltips are displayed.


Users are recommended to upgrade to version 6.1.0 if using the Lines series=
 in this way, which fixes the issue.

Credit:

Lakshmikanthan K (finder)

References:

https://github.com/apache/echarts/pull/21608
https://echarts.apache.org/en/option.html#series-lines
https://echarts.apache.org/handbook/en/best-practices/security/#passing_raw=
_html_safely
https://echarts.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-45249

