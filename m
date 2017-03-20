X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["690" "Monday" "20" "March" "2017" "21:15:47" "+0100" "Dominik Stadler" "centic@apache.org" "<CABdJj54TM1tCzA1-YL51d=TSOtDQ2L0B87+xbqe3Wur-7Du+Vg@mail.gmail.com>" "25" "[oss-security] CVE-2017-5644 - Possible DOS (Denial of Service) in Apache POI versions prior to 3.15" nil nil nil "3" "2017032020:15:47" "[oss-security] CVE-2017-5644 - Possible DOS (Denial of Service) in Apache POI versions prior to 3.15" (number mark "U       centic@apach Mar 20   25/690   " thread-indent "\"[oss-security] CVE-2017-5644 - Possible DOS (Denial of Service) in Apache POI versions prior to 3.15\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32545 invoked by uid 550); 20 Mar 2017 20:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26397 invoked from network); 20 Mar 2017 20:16:02 -0000
X-Gm-Message-State: AFeK/H1k2sxYB+zVuCGa6qBSqlUA1oD+PELxmU55bcjd1l+tp3xFG3vJ+zJVF1DIixa/zUJuUipb6CtqqnhUWw==
X-Received: by 10.55.22.16 with SMTP id g16mr442637qkh.102.1490040948331; Mon,
 20 Mar 2017 13:15:48 -0700 (PDT)
MIME-Version: 1.0
From: Dominik Stadler <centic@apache.org>
Date: Mon, 20 Mar 2017 21:15:47 +0100
X-Gmail-Original-Message-ID: <CABdJj54TM1tCzA1-YL51d=TSOtDQ2L0B87+xbqe3Wur-7Du+Vg@mail.gmail.com>
Message-ID: <CABdJj54TM1tCzA1-YL51d=TSOtDQ2L0B87+xbqe3Wur-7Du+Vg@mail.gmail.com>
To: private@poi.apache.org, security <security@apache.org>, 
	"zhuxiaolong (C)" <zhuxiaolong1@huawei.com>, "Chenhuijun (Sniper)" <chenhuijun@huawei.com>, announce@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a11493f526d90b6054b2f3109
Subject: [oss-security] CVE-2017-5644 - Possible DOS (Denial of Service) in Apache POI
 versions prior to 3.15

--001a11493f526d90b6054b2f3109
Content-Type: text/plain; charset=UTF-8

Hi,

Vendor: The Apache Software Foundation

Versions affected: all versions prior to version 3.15
Apache POI in versions prior to release 3.15 allows remote attackers to
cause a denial of service (CPU consumption)
via a specially crafted OOXML file, aka an XML Entity Expansion (XEE)
attack.

Users with applications which accept content from external or untrusted
sources are advised to upgrade to
Apache POI 3.15 or newer.

Thanks to Xiaolong Zhu and Huijun Chen from Huawei Technologies Co., Ltd.
for reporting the vulnerability.


Dominik Stadler
on behalf of the Apache POI PMC

--001a11493f526d90b6054b2f3109--
