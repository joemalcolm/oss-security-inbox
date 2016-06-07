X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["611" "Tuesday" "7" "June" "2016" "08:45:27" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160607064527.GA20067@lorien.valinor.li>" "18" "[oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File overwrite by setuid programs" nil nil nil "6" "2016060706:45:27" "[oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File overwrite by setuid programs" (number mark "U       carnil@debia Jun  7   18/611   " thread-indent "\"[oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File overwrite by setuid programs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24159 invoked by uid 550); 7 Jun 2016 06:45:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24140 invoked from network); 7 Jun 2016 06:45:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gM5JyJ37e1/G9653QyCh82SBUqa39vY3p0a0al1ruVU=;
        b=PP9U908NOso4NxZA2uGY3I55fQpKrKswCNu9BYx7ax+hLKBi+gHug5/DYZxmlNQfAF
         cP0LC47LTpU1aCQxcxMAcJGrhM7O9V1w8vkVBP7/BctMf+ZGtbRqNBtpcGYc1ttmdAQz
         aSORenl21jhIDM142LQha1dl7TAVCQxbuIxgDzIAPejXtrqb9HHraIMevYhgX9bSF1Sv
         ms0Kt6qX6Zxg+CQpvFTQtb5WtzhMzrWvtYRm/jcX0B+89C8lRNyOQtFW20jRgEIb2WOD
         WQL96wmGKPIMfc2pW+G3eSD7Ms2DFFhTHI4lbxo+5NApJrROD6tjB+8Qk0L5RnPWFR+1
         vg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=gM5JyJ37e1/G9653QyCh82SBUqa39vY3p0a0al1ruVU=;
        b=R6PR0enbFT3i++O8l6QkNe2r6MeCP6V4AokFmSVPd1EdcT8nYmG6DH7ajWFOUrA1CT
         5+zB3T7yW7dHmDPQmuQLGSelprU5RH/pxMEwFb4UBYcoQYBXByIgmc5UDw7Q9D+1itle
         J+YSZoJ5yFloVhd6pNx5ksZa/ngdgr1K7cgIdSg0RY1fXxyp0+5ASRFjEo/wHMVpYE62
         M/fu0wN0OY1DgcnzYLvenTenzMNV2LeUqCUiqu+/CAp1X9PBBaLW9LCFMYpNnKxr+6NT
         Pl3dYF+vCevYVghgNpmhUegjiwYzTtqauvzLRHXJbVY0iDnw11qB3tgqEsr9c/y+hk7l
         jRvQ==
X-Gm-Message-State: ALyK8tI0Ck5wt48TbC/bnT5C5Q9EZ+oAarGQJi1DQYblHc+slkzdJFKY1htgjWVGrRqaKQ==
X-Received: by 10.28.182.8 with SMTP id g8mr952658wmf.56.1465281931117;
        Mon, 06 Jun 2016 23:45:31 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 7 Jun 2016 08:45:27 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160607064527.GA20067@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File overwrite by setuid
 programs

Hi

GnuTLS 3.4.13 was released addressing GNUTLS-SA-2016-1,
http://gnutls.org/security.html#GNUTLS-SA-2016-1 :

> Setuid programs using GnuTLS 3.4.12 could potentially allow an
> attacker to overwrite and corrupt arbitrary files in the filesystem.
> This issue was introduced in GnuTLS 3.4.12 and fixed in GnuTLS 3.4.13.
> Recommendation: Upgrade to GnuTLS 3.4.13, or later versions.

The relevant upstream commits seem to be:

https://gitlab.com/gnutls/gnutls/compare/fb2a6baef79f4aadfd95e657fe5a18da20a1410e...86076c9b17b9a32b348cafb8b724f57f7da64d58

Can you assign a CVE for this issue?

Regards,
Salvatore
