Received: (qmail 17538 invoked by uid 550); 22 Sep 2022 13:04:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28023 invoked from network); 22 Sep 2022 12:53:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date;
        bh=iGdj8UNQt4ttV/Q7+8qfdPWLI5yyHCz66HD3PLD4a88=;
        b=W6F1wRZC62OXClp7g5xKuDX4ltns6G4SFE3ocZRQqDoWMeZTAk5HXwvysYtGTd8P9o
         Kxw8c6nU3+6cjoRWJCRmvco5GuNgjlqTEhNCL9F9JPYkxqTLsj6A45eNR59mWW67tTzr
         zj0l0erYuKzxTrXYZQOxrYKcf92YlILJqVdpwsq6uJ2KpGAhP8KHB+T6VnMBHa9aDl6d
         KA0FRBQexqenyKmLfp5nJ7lzMYzs46ufJVgMP0s465Q20wvhioi7pQzoEwxA7QxiWP5I
         X5rtpzaYgQtljd/G/nZsnrVKbt9IAlv1Evjk5/PSyPsHC2lUgXrUjX0b83kplmz+mojW
         4v4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date;
        bh=iGdj8UNQt4ttV/Q7+8qfdPWLI5yyHCz66HD3PLD4a88=;
        b=2pHSSetfEZOOXarwCc+mejNsObLvRSBQw/L4llvt8T6P5Lmry2n6u8HKxKuyXgQ8h4
         17amz7cyh4ssobdbECajTY/dD1vQEiri1FxLFKpGVx6pmOmbgjTG4oyOQEurPktx6Mwx
         8pI7bgrelK2TIbCpDdjX2h2CWdssXGEk7O4Y1z1/wEks/oBf1AJ0UgwCH9i+g8l4q1ds
         df9m/+QvjvXaKW6bV+lp8yeQegDaHb7JvZqYJKBR5CclmNxzOCLKbo9kYZ5vdztfwdej
         5ZfjAOo2g4GrziVDvx3doyxDTEBnD9RepAKszeP5YDRJlCj2cBmPVSrPE63xNlC0XB+m
         NeAQ==
X-Gm-Message-State: ACrzQf2UlOrNIRDFup+Lb1pHW1juRTWTv1kiIcL/Ub3mgjkC9QaUH7Pl
	t+YbrxfQXTVOd6a5vXZy+Ak=
X-Google-Smtp-Source: AMsMyM7AV1z4Yh/e7aUQwskPYQMRwO7tMlsw1m0re9Jz7u/xgXUX3HhlZGOUe0bVoFQvQ4p+pU8zbw==
X-Received: by 2002:a05:6000:1683:b0:22a:fb88:2f35 with SMTP id y3-20020a056000168300b0022afb882f35mr1952848wrd.656.1663851190853;
        Thu, 22 Sep 2022 05:53:10 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	"'Apache Security Team'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Thu, 22 Sep 2022 13:53:09 +0100
Message-ID: <001401d8ce82$44e04b50$cea0e1f0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdjOgkRfOJy48O3/Tle4SUVqaa6pZA==
Content-Language: en-gb
Subject: [oss-security] [CVE-2022-40146] Apache Batik information disclosure vulnerability

CVE-2022-40146:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.14

Description:
        Jar url should be blocked by DefaultScriptSecurity

Mitigation:
        Users should upgrade to Batik 1.15+

Credit:
        This issue was independently reported by Piotr Bazydlo (@chudypb) of
Trend Micro Zero Day Initiative

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1335

The Apache XML Graphics team.


