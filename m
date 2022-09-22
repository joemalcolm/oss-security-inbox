Received: (qmail 17556 invoked by uid 550); 22 Sep 2022 13:04:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30693 invoked from network); 22 Sep 2022 12:55:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date;
        bh=U5q3TeOPiAOn0mEp7nsu+7zzpzlEaoIlB1JfrDZ/ck4=;
        b=YV0iSpLDF9pGEZxkMhZNQRSIN7dxKWXA1jvqwYWWTBVVm+jzKssW+73flYi6pdYpID
         NgQtcct/Ne7wdWhd2aIPExtaDUkODNG5H1OEoIu7xAI/Pe/9/+H8nYhjXQ0NBhWm1Xdm
         +wI5Sd98loSnTTK2kAuZ1igfSVTly/1/xvAHzfAszz4ewG3F0Eib2P1BkK8DjSGY2l8I
         Y3qKx0hSDtQqtmzs49kFhYgiv8h19afNnTX6HQzARuLecXGHEHSyTjzq1S23ywr7+aZT
         FbommVGpgtxN6ey8/SGmu+WHo2RL8kRW7o538hTTw2me4u9DMxX6H+3ApCTY5Hdf9ELh
         9v5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date;
        bh=U5q3TeOPiAOn0mEp7nsu+7zzpzlEaoIlB1JfrDZ/ck4=;
        b=19w2US4cQlLibnRDtnKooVLGGnwEhp8fIFFdtZICRtdN7NgGSgGeTyQIl+sq1aMBEf
         bnLIbOm/RybjFz+d369CeNT21SNarej+0j569aOKwQyAjwCIQUXWwOMD6jprGrufniUf
         QpwMJnrktLWOh5g3/DOLS7UIEwgH/5iYfpisGZq06i5KxfAtoO27bMWCekvWzeNqlzsn
         3wrxvZOSXSG8IFQQ5YYa6ZfsGcUOE67nZBM03Ao+LUGvEdCjhD9qzqiduCqLA8iSbWGq
         QIqnLtPDVyrjr5gY5ODiWR7aNECGrE+5JKyhGYVxsSRHAnv+RBK/GNl2w5oeror/XFZy
         HNXA==
X-Gm-Message-State: ACrzQf3pfMV8mgetsJZhicBcn66crbXH+U7NX023T+LZ0abN6JwB6bTd
	vAgcJDc5hHKhNxbr+Myn1G7tlHjmoY88/RBR
X-Google-Smtp-Source: AMsMyM6AFhhwS1MmaagGEdfx5qSAb0/o6jbYzhvk9BRuxozlHIRChOgdT8SvOAPfYf+eXvH5uXc5Eg==
X-Received: by 2002:adf:d1cc:0:b0:22a:450c:6208 with SMTP id b12-20020adfd1cc000000b0022a450c6208mr2055004wrd.696.1663851313317;
        Thu, 22 Sep 2022 05:55:13 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	"'Apache Security Team'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Thu, 22 Sep 2022 13:55:12 +0100
Message-ID: <001501d8ce82$8df67800$a9e36800$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdjOgn98119SstJ9T4auurAEzrkIVQ==
Content-Language: en-gb
Subject: [oss-security] [CVE-2022-38648] Apache Batik information disclosure vulnerability

CVE-2022-38648:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.14

Description:
        Block external resource before calling fop

Mitigation:
        Users should upgrade to Batik 1.15+

Credit:
        This issue was independently reported by Adam Rauch

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1333

The Apache XML Graphics team.



