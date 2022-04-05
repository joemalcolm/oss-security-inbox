Received: (qmail 7705 invoked by uid 550); 5 Apr 2022 16:15:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32001 invoked from network); 5 Apr 2022 15:55:01 -0000
Content-Type: text/plain; charset=utf-8
From: Subbu Subramaniam <mcvsubbu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c4acef90-342d-4a39-069a-ecc1a8dd7f9a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 Apr 2022 15:54:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-23974: Apache Pinot: Pinot segment push endpoint has a
 vulnerability in unprotected environments 

Description:

In 0.9.3 or older versions of Apache Pinot segment upload path allowed segm=
ent directories to be imported into pinot tables. In pinot installations th=
at allow open access to the controller a specially crafted request can pote=
ntially be exploited to cause disruption in pinot service.

Pinot release 0.10.0 fixes this. See https://docs.pinot.apache.org/basics/r=
eleases/0.10.0

Credit:

Apache Pinot would like to thank bubblegumkk@qq.com, Kuiplatain@knownsec an=
d FA1C0N@RPO_OFFICIAL for reporting the issue

