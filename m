X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["636" "Monday" "17" "August" "2015" "14:29:05" "+0200" "Dejan Bosanac" "dejan@nighttale.net" "<CAGeh-pEJEEEoQWNnsWhTAVQTw1J=VgeD_tab4DTT+RnaG5YDCw@mail.gmail.com>" "22" "[oss-security] [ANNOUNCE] CVE-2015-1830 - Path traversal leading to unauthenticated RCE in ActiveMQ" nil nil nil "8" "2015081712:29:05" "[oss-security] [ANNOUNCE] CVE-2015-1830 - Path traversal leading to unauthenticated RCE in ActiveMQ" (number mark "        dejan@nightt Aug 17   22/636   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2015-1830 - Path traversal leading to unauthenticated RCE in ActiveMQ\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13868 invoked by uid 550); 17 Aug 2015 12:29:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13814 invoked from network); 17 Aug 2015 12:29:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=hm/4yLVyd0kWvZPu01nxfXIRijsVfpWHDj5dKU4vspo=;
        b=e60SPtTxiKg9KivPo6g6TOmYDwb0lYybDJldO+FL2E33zQLEX1C17nYQCfdtxIG0N1
         te/L1DCqjs7waQDNpiJavf3bcAATVWmWDhG3n5zzRc63o89r+uaNfbmKbMr/Lz/hM2i5
         VI6SFO0jR4zCaSabRI/rdLXuqGRSjWOWRqQ/dgyl/vrQFjzoHMfJo9H8dcYDStzgnNHe
         UMgzbIopWK0TIE7R7Jd8e5i5hzddq3IdNnY1UZKNTKM6zfknjHaL9h6Esk1ijIfRebnc
         OC1LmcndETmPYsRWzz8STDTBF5wjVZM3YXZYYqzhx0lM8wmczrrjIGvrMxHXsQ1OxeKl
         jRyg==
MIME-Version: 1.0
X-Received: by 10.170.127.86 with SMTP id t83mr1010107ykb.107.1439814545743;
 Mon, 17 Aug 2015 05:29:05 -0700 (PDT)
X-Google-Sender-Auth: JO1EQK6MZ7WSUq2Wg9U-sCXkWEk
Message-ID: <CAGeh-pEJEEEoQWNnsWhTAVQTw1J=VgeD_tab4DTT+RnaG5YDCw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1139d1cc8aa649051d80f20c
Date: Mon, 17 Aug 2015 14:29:05 +0200
From: Dejan Bosanac <dejan@nighttale.net>
Reply-To: oss-security@lists.openwall.com
Sender: chubrilo@gmail.com
Subject: [oss-security] [ANNOUNCE] CVE-2015-1830 - Path traversal leading to unauthenticated
 RCE in ActiveMQ
To: "dev@activemq.apache.org" <dev@activemq.apache.org>, 
	"users@activemq.apache.org" <users@activemq.apache.org>, 
	Apache Security Response Team <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com

--001a1139d1cc8aa649051d80f20c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

A security vulnerabilities is reported against Apache ActiveMQ 5.11.1 and
older versions

Please check the following document and see if you=E2=80=99re affected

http://activemq.apache.org/security-advisories.data/CVE-2015-1830-announcem=
ent.txt

Apache ActiveMQ 5.12.0 and 5.11.2 with appropriate fixes are released and
available for upgrade. There's also a configuration workaround that
resolves the problem (described in the announcement).

Regards
--
Dejan Bosanac
about.me/dejanb

--001a1139d1cc8aa649051d80f20c--
