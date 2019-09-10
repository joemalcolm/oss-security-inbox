X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["961" "Tuesday" "10" "September" "2019" "15:29:17" "-0700" "Jacopo Cappellato" "jacopoc@apache.org" "<CAEvdU_35sTnyFYsZKLeeW=V1G9P3mKWbvqNFV0q300x5E7GKow@mail.gmail.com>" "37" "[oss-security] [CVE-2018-17200] Apache OFBiz unauthenticated remote code execution vulnerability in HttpEngine" nil nil nil "9" "2019091022:29:17" "[oss-security] [CVE-2018-17200] Apache OFBiz unauthenticated remote code execution vulnerability in HttpEngine" (number mark "U       jacopoc@apac Sep 10   37/961   " thread-indent "\"[oss-security] [CVE-2018-17200] Apache OFBiz unauthenticated remote code execution vulnerability in HttpEngine\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2018-17200] Apache OFBiz unauthenticated remote code execution vulnerability in HttpEngine" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19919 invoked by uid 550); 11 Sep 2019 05:19:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15854 invoked from network); 10 Sep 2019 22:29:41 -0000
X-Gm-Message-State: APjAAAVJG7w4qvvnBUi/NVR5QMmHv/Xlw5tp81lKMPOsGCY3ZaTxTCyx
	7YX50ZAtx9cAjzqzyIMKEaT2Ndm4TpmnL+VlKZ4=
X-Google-Smtp-Source: APXvYqy8E/T7YrpBPUmUh3KcrzhBYgubaqpa5tPCHvKDgJqZgVWBqz7PphCA+uv7Vq0l9P56vEMUTY7Yg1Sq+ZQ4DtA=
X-Received: by 2002:a1c:9d0b:: with SMTP id g11mr1259038wme.22.1568154568520;
 Tue, 10 Sep 2019 15:29:28 -0700 (PDT)
MIME-Version: 1.0
From: Jacopo Cappellato <jacopoc@apache.org>
Date: Tue, 10 Sep 2019 15:29:17 -0700
X-Gmail-Original-Message-ID: <CAEvdU_35sTnyFYsZKLeeW=V1G9P3mKWbvqNFV0q300x5E7GKow@mail.gmail.com>
Message-ID: <CAEvdU_35sTnyFYsZKLeeW=V1G9P3mKWbvqNFV0q300x5E7GKow@mail.gmail.com>
To: "user@ofbiz.apache.org ML" <user@ofbiz.apache.org>, Dev list <dev@ofbiz.apache.org>, 
	security@ofbiz.apache.org, announce@apache.org, 
	oss-security@lists.openwall.com, hizhangsword@gmail.com, 
	security-reports@semmle.com
Content-Type: multipart/alternative; boundary="000000000000027b1c05923a70b7"
Subject: [oss-security] [CVE-2018-17200] Apache OFBiz unauthenticated remote code execution
 vulnerability in HttpEngine

--000000000000027b1c05923a70b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.05

Description:
The OFBiz HTTP engine (org.apache.ofbiz.service.engine.HttpEngine.java)
handles requests for HTTP services via the /webtools/control/httpService
endpoint.  This service takes the `serviceContent` parameter in the request
and
 deserializes it using XStream. This `XStream` instance is slightly guarded
by
 disabling the creation of `ProcessBuilder`.  However, this can be easily
 bypassed (and in multiple ways).

Mitigation:
Upgrade to 16.11.06
or manually apply the following commits on branch 16
r1850017+1850019
----

Credit:
Man Yue Mo of the Semmle Security Research Team
=E5=BC=A0=E5=89=91 <hizhangsword@gmail.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

--000000000000027b1c05923a70b7--
