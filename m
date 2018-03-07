X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["576" "Wednesday" "7" "March" "2018" "06:49:33" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20180307054933.mbio725l6wd7a232@lorien.valinor.li>" "17" "[oss-security] util-linux: CVE-2018-7738: code execution in bash-completion for umount" nil nil nil "3" "2018030705:49:33" "[oss-security] util-linux: CVE-2018-7738: code execution in bash-completion for umount" (number mark "U       carnil@debia Mar  7   17/576   " thread-indent "\"[oss-security] util-linux: CVE-2018-7738: code execution in bash-completion for umount\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23880 invoked by uid 550); 7 Mar 2018 05:49:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23862 invoked from network); 7 Mar 2018 05:49:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=sUkpUeXwToCyGRqUudIYHCPNVpN3tBv7IUu9/SwnSqA=;
        b=tl33rK8zE672WbyVNByyo1M8BkRY4X7dmZsnQwB340e+MR+Q52DNFUDB4t4AcGitz+
         HG7dOf61f2iwChfy3G14N/8D3NsHCNKUUiqwh+O5B5kJH/LOeWsMbd46wBqJjzrjO6nS
         TJODB1ePSlP1XOTITY3w8kyKuRJvcc9CM2i99a0TM/evv110VfeTB7mENQP6d7DeNNHV
         h+MNP/nHXJwnNviAwBpfyP7g4ZuM/wsybg8MMpD6EqY9vVL6raqpVDG9qv67dI3Agsrs
         tG5Gr6MmUHk4Qc3LdKB7+J8YOeL6LBJjCQ1tVFNZltuNRdEJLDsaf35BJ/dn2ES/HPEq
         Z0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=sUkpUeXwToCyGRqUudIYHCPNVpN3tBv7IUu9/SwnSqA=;
        b=MGt4Db2AKzjK38wRq7Rf5cosrdMKhEQ2Ag7QObIWgtbNpd4OcT5jzlIn6G3ZacUcz5
         v5OBTB3oWSy7aKU8I5FrGIeqaJwxR+7I3O6G/VzqmWm7IADgQaCrBhPf714an9UNp39k
         o28pegJ3c8QBFfE6vVmyi7sCN4wo7KlfAMXkzGtI9SaUjlCEnTe86/6jvg9mbD+ubEU1
         Wjt/9dkPtDfzDW9iGUA096RvHH5br2dMjUNuQy3mTAp9dx5IXbwY0Z7NS7nHlbd3e0RC
         95Z31hUmP+u8H0R6CYTX7sDX8VDSWsaWGw7I8k2hyHARGmEM/GfAm5QE2uJtZCVqYwEP
         B4/w==
X-Gm-Message-State: APf1xPDHunMST7N+R+9popUjqyX4Syr7tCGXoOGzYhK21EpXmClnu0cv
	sSYYF811+ADYxRgCDhggBoHJddLS
X-Google-Smtp-Source: AG47ELuxRuVZhgNh9YiKdXKzxZjwA3WeUmrhgJJFKNq1YUOzdBoTJ+l1+QO2nEff3y/wxdH8Nzu0cw==
X-Received: by 10.223.176.86 with SMTP id g22mr17006798wra.11.1520401774788;
        Tue, 06 Mar 2018 21:49:34 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 7 Mar 2018 06:49:33 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20180307054933.mbio725l6wd7a232@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] util-linux: CVE-2018-7738: code execution in bash-completion for
 umount

Hi

Björn Bosselmann reported to the Debian bugtracker[0], that the umount
bash-completion as provided by the util-linux source does not escape
mount point paths. A user with privileges to mount filesystems can
embbed shell commands in a mountpoint name and taking advantage of
this flaw to gain privilgeges.

The issue was (indirectly) in [1] while adressing another issue.

MITRE has assigned 'CVE-2018-7738' for this issue.

Regards,
Salvatore

 [0] https://bugs.debian.org/892179
 [1] https://github.com/karelzak/util-linux/commit/75f03badd7ed9f1dd951863d75e756883d3acc55
