X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["173" "Tuesday" "28" "February" "2017" "19:44:38" "+0100" "Albert Astals Cid" "aacid@kde.org" "<1501907.mtIKE32cx4@xps>" "6" "[oss-security] kio vulnerability: need CVE" nil nil nil "2" "2017022818:44:38" "[oss-security] kio vulnerability: need CVE" (number mark "U       aacid@kde.or Feb 28    6/173   " thread-indent "\"[oss-security] kio vulnerability: need CVE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19979 invoked by uid 550); 28 Feb 2017 18:46:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19626 invoked from network); 28 Feb 2017 18:44:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:subject:date:message-id:user-agent:mime-version
         :content-transfer-encoding;
        bh=cIeCDe1GzTIAprzl36eUnmLbx/wx0NVDDnyAs5KM/jA=;
        b=kjWXvAkeohKziUneUQO1uG4fD6/PviA+JLXHpVr3SxbXVwYosBcG/ca67UfR36HO/p
         FEPwtmCbzNZlmuWwEDOKULWzzYKTKjhA23MqxvVsO9Wb8vnQzK6YDtFiLRpuHJ+N5FT0
         S1k/a/fz+TECFuCxJEhgIt/P0PAywGH3/6fL1BYaVHS1RzGsbBVOv+B7xOLrNGVqw5EO
         JJCgx8APcn+vvkPKg7i64PvVoxsReOcZ4TuSVKGTeLT5pM2F2XEYDac/wI+IcnMMvE+9
         v8UrIIcltFUY6J9v/l1LVzb1Eo3wf3Llbo2YESO3OKdNpnT3Nq3ezLLzdI/IiS5xmlqT
         9zdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :user-agent:mime-version:content-transfer-encoding;
        bh=cIeCDe1GzTIAprzl36eUnmLbx/wx0NVDDnyAs5KM/jA=;
        b=d/6A4y933DTQHjP0KyS2GNg0n8t6lBu8athndw1oMTQUlJyGt9SyNVfUC/TAbqSNEH
         IeqYjwlg0bAYm4k/cmyZFs3VLvzAKbPGpqnyJfNK/tGN+pwcap+Qoqp7tYKAVaP0WG4p
         ywGFbiujcmcBRCXYiucP8giGR8n9Q1iX7ouKuVuIWyzmafbC5SzT/3jCnHPm1aONMc76
         Zc14nl8m79C+uaRNPYAhYA5vDda3eIDE4NalKYjltgjHHzTTgmnj6fhQaGQkHyZH2fum
         j15HNWjEGVjyVNo+6Q5HiP76qaNNoTGHzvZT4Vg9FU69TE4R2JqqKdmwkA4G9gay155K
         OHMQ==
X-Gm-Message-State: AMke39n1c2m10hYq1nMxWBZI6vWqC5n1/lS+QFEzJzRORedhigq+FnVkSlJBNruM852qTg==
X-Received: by 10.223.146.131 with SMTP id 3mr3887200wrn.198.1488307479821;
        Tue, 28 Feb 2017 10:44:39 -0800 (PST)
Sender: Albert Astals Cid <tsdgeos@gmail.com>
From: Albert Astals Cid <aacid@kde.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>, security@kde.org
Date: Tue, 28 Feb 2017 19:44:38 +0100
Message-ID: <1501907.mtIKE32cx4@xps>
User-Agent: KMail/5.2.3 (Linux/4.8.0-39-generic; KDE/5.26.0; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] kio vulnerability: need CVE

Hi, Albert from KDE, can we get a CVE assigned for kio (input/output library)?

advisory is here https://www.kde.org/info/security/advisory-20170228-1.txt

Thanks,
  Albert
