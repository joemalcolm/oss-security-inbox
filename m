X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["554" "Wednesday" "29" "June" "2016" "21:42:44" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160629194243.GA12097@eldamar.local>" "20" "[oss-security] CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)" nil nil nil "6" "2016062919:42:44" "[oss-security] CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)" (number mark "U       carnil@debia Jun 29   20/554   " thread-indent "\"[oss-security] CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30211 invoked by uid 550); 29 Jun 2016 19:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30193 invoked from network); 29 Jun 2016 19:42:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UAXM409f/UT/Vz07pPcp0SFPSYn8SU3solZnKYj2w5o=;
        b=Nh7sdoTF5XrCY5KoBhU+h/qlv/rAML2ZrXhrc/THT6JJKebTXlbswmCx7NIUgQdErS
         dC0jlMhgMI3oC2QlnVkZkfVRKzkRwjF+1OcT3cDANC1/fffTcCIspX+FwPdS+/PNNfyn
         t5OXoLp5Apf/JXHVMpDQQ5W/rSfkzcUGz6eSo3YUZcYXqV8syKBO2dsOgsMXRyW6Iqb+
         SFHC38ATtIg5PxcsFAZbLz8avDHAD0AGvrRAcfGcYdYXh8+58h9IrTJ4XoOgSFV8SEPC
         gttQRhcNpbgdlqS43/zjIdmLB36a2WeODPFf0vL/itERPzwdoHIhrDp9lSN05wJQ+4vb
         6YcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=UAXM409f/UT/Vz07pPcp0SFPSYn8SU3solZnKYj2w5o=;
        b=cvmwvUi1M1BuKLhSiPv+NMJJZaqy1blT6OKPH3zPlvoFHm6OpAhLR2UA0WsgKdowxx
         1lt8egH7vi3QodPccV4FVPoOMXQrwMq2K8nO47lLLw/LHSqiPcfXT8fltTYxdZJmR5sz
         I5cLXYz7RfZhCeVXtK5fRKDtmhI+EZ4m/md2Rn55BHGFCCvKUMhpEKYp4L+VY56+ST9D
         IayJJGoNtQY853VF4nVWkdkVS+qX0QbBNiUQbKawtl0G0VzSb27z8ImcK39wonCkrK4t
         1ujhGggJeKviEQeEzMsBr8W6f+Wyjdjr3ajUzTbsL7lKbGIZaca6n3OR6Od+fOuyQFXN
         Zktw==
X-Gm-Message-State: ALyK8tISl+f+yBdAoZ/GrQjr9W4qYBjhcWdAx9FWrnNmOlua9zCM4U5pbOxTancaslfEKA==
X-Received: by 10.194.162.168 with SMTP id yb8mr11148890wjb.32.1467229366548;
        Wed, 29 Jun 2016 12:42:46 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 29 Jun 2016 21:42:44 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160629194243.GA12097@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: libgd: Invalid color index is not properly handled
 leading to denial of service (crash)

Hi

There is currently PHP upstream bug which is still marked as private:

https://bugs.php.net/bug.php?id=72494

But the libgd project references the following set of commits to this
bug report:

https://github.com/libgd/libgd/compare/3fe0a71...6ff72ae

indicating that libgd does not properly handle invalid color index,
which could lead to a denial of service against applications using the
libgd library (in particular thus PHP).

Could you please assign a CVE for this issue (in case it was not yet
requested by other channels?)

Regards,
Salvatore
