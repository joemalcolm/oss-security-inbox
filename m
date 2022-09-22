Received: (qmail 28556 invoked by uid 550); 22 Sep 2022 12:55:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26372 invoked from network); 22 Sep 2022 12:51:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date;
        bh=/nATe2LgE6wJpK7NOogAjAWHO1ZtI7e8PNpJZyzdGeY=;
        b=MVu6tOEoods+9TQ9mHU+SEhrDGV36JujWP/kRs6ZOoRXS/CIIcPoGzngnJSZxzfCIf
         8Ylt416R1lJQC/6SH+aVK7H5B5pOgBHptTGqg9ehECcYTO5Xquhm3K1YLrO7NUnd0ZNH
         VBigSS8VinxU3OC4IA9bgAfOVRhKwj6VOIx4Z2o32bQecclykO1dGqj6ZAFjVOJMi/W9
         xFWBzGXkEyxo5xDYSdlb2b3titouMvNi2g/RCP8WUo9437j4BuVof92XPIa4BJNAmuC3
         ZV4qBWl3iDMtxctgBGI80oXzJMu0N3cGASOLuGMFQiAEER+vXwoUdBr16N2/Q/DzZH1v
         xBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date;
        bh=/nATe2LgE6wJpK7NOogAjAWHO1ZtI7e8PNpJZyzdGeY=;
        b=TpE0QYh/FtLy5tBS2hk9cwpcsTWbBnzxR7Z01osoXNTs5GbS/vs/MZ97lfxabxUC4p
         zou2zaV6A4OEPPNCn30I8Y7cRwQvmPYqvCsunTN/eGVnASRg/DHyHNoTuCuu5SH307Mw
         aw9G4J/Z2tPka4rRtggvEGa6AyUcq0JODO7FaivVuF49HBHtu1+iV2sDZ6qoPDgwfoiH
         9aebM66+vTiK2WoV2t1tyWk/EPtTNBmWwEp7lfaPO7sx8fQN4SLBZgfQx69YQOzDUT5x
         9EwRPwsE4vLIRJYB+E0fojBlEyOPtDPrWqhtgBziB6x4RNrNgpeF+cSMc+CDPxU2PxrO
         jMJA==
X-Gm-Message-State: ACrzQf2MGIOtgqHxfGg8A0SueXVrPlCVpjlP+46IG1h36ubUL+YeOzhu
	i/2uIGXs2wEJA0w0/hSahTpapA8z4K5bDFHs
X-Google-Smtp-Source: AMsMyM5+9QXmf5fazccZEDZt92Oz3ZGlzJEVCqSzJDVN2xfkTeDHDENc0HkWu+pPlKC2msWAboDifg==
X-Received: by 2002:a5d:5010:0:b0:22a:cb71:9493 with SMTP id e16-20020a5d5010000000b0022acb719493mr1992807wrt.514.1663851065756;
        Thu, 22 Sep 2022 05:51:05 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	"'Apache Security Team'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Thu, 22 Sep 2022 13:51:04 +0100
Message-ID: <001301d8ce81$fa4e05f0$eeea11d0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdjOgSZy80VUF7g9RAWcaaEq4zbcdQ==
Content-Language: en-gb
Subject: [oss-security] [CVE-2022-38398] Apache Batik information disclosure vulnerability

CVE-2022-38398:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.14

Description:
        DefaultExternalResourceSecurity should block urls loaded thru the
jar protocol

Mitigation:
        Users should upgrade to Batik 1.15+

Credit:
        This issue was independently reported by Piotr Bazydlo (@chudypb) of
Trend Micro Zero Day Initiative

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1331

The Apache XML Graphics team.

