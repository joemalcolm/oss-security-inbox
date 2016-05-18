X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Wednesday" "18" "May" "2016" "10:28:37" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160518082837.GA13028@lorien.valinor.li>" "32" "[oss-security] CVE Request: Linux: information leak in Rock Ridge Extensions to iso9660 -- fs/isofs/rock.c" nil nil nil "5" "2016051808:28:37" "[oss-security] CVE Request: Linux: information leak in Rock Ridge Extensions to iso9660 -- fs/isofs/rock.c" (number mark "U       carnil@debia May 18   32/1390  " thread-indent "\"[oss-security] CVE Request: Linux: information leak in Rock Ridge Extensions to iso9660 -- fs/isofs/rock.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13852 invoked by uid 550); 18 May 2016 08:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13831 invoked from network); 18 May 2016 08:28:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l0830bx+RLEk/KrOtDmKuIl/bYxbZyl4ol5ZKR1oBr8=;
        b=csaOyN0hkp4/KE/8uxSW9y/CmBiDOm8guPdp1kTm+q+DjEGldV85pZojOMmB2iAZUN
         yk7ecgqjSa53pxDwclBXQIh23WZ+ITOG8RK1Ag+ZTcqFZ5/c01FXVUHihwo2SMa9pYXm
         GNAjDOLbfgn5byCx7yOf552QA4DHPVCxkalFPSUBVt+h4jEwOD3W4CbIgFMxbkNFRnow
         Jp88uiNsN+HclAbja0ERgXzjGN/yldJEgz6He1/tLJFdEL+Vr9x3SRKuTIhgt6RhVQVz
         6ndPhAwy4VHmiiKvaWZ4xRm+3RMoavFwvu2f0ivslWW/2DxR0biU5BrFDnlo3xabdtYf
         SqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=l0830bx+RLEk/KrOtDmKuIl/bYxbZyl4ol5ZKR1oBr8=;
        b=H5ScyBHgKblfPuXMp1hcdyGQC7odCL+3UbkXe44PmOf/8BA8VjU+J/uN3YBa/4utad
         i/ws4x25cvPLtcuRhT9LUTC35K8VwhNJ1SxbzsCqQbSCKwLWN3hj40J00DRWCDhvG9lv
         JpZ+XsscIXTVut1bwfRTl5krWx1LRh5LpKvn/7cZC4S4FEdBQ6hyefcvO3ZDU5iS1Voz
         iyIp9OYXM7pmSXEc5yoyWZb3FRp2eiOh3okX7DKo0VZ4Oz6pQkHivS/gJn4sxMOavamb
         yMOZIPMOTdvLQoRH0wdKjREzfhN9esaProBaOnP65Noxt9bQo5+Zd2bI/Ap5PQq+r/Sk
         K86w==
X-Gm-Message-State: AOPr4FULJisd2ZtJ31oFgRgusUEtkki3RyprLCvicSjFOwAzS+2JWIobf9v987mtBkkN+A==
X-Received: by 10.28.35.201 with SMTP id j192mr26877403wmj.18.1463560119602;
        Wed, 18 May 2016 01:28:39 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 18 May 2016 10:28:37 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160518082837.GA13028@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: Linux: information leak in Rock Ridge Extensions to
 iso9660 -- fs/isofs/rock.c

Hi

The following commit in Linux v4.6 addresses an information leak
caused by not properly handling NM entries containing NUL. Quoting the
commit message:

> Subject: get_rock_ridge_filename(): handle malformed NM entries
> 
> Payloads of NM entries are not supposed to contain NUL.  When we run
> into such, only the part prior to the first NUL goes into the
> concatenation (i.e. the directory entry name being encoded by a bunch
> of NM entries).  We do stop when the amount collected so far + the
> claimed amount in the current NM entry exceed 254.  So far, so good,
> but what we return as the total length is the sum of *claimed*
> sizes, not the actual amount collected.  And that can grow pretty
> large - not unlimited, since you'd need to put CE entries in
> between to be able to get more than the maximum that could be
> contained in one isofs directory entry / continuation chunk and
> we are stop once we'd encountered 32 CEs, but you can get about 8Kb
> easily.  And that's what will be passed to readdir callback as the
> name length.  8Kb __copy_to_user() from a buffer allocated by
> __get_free_page()
> 
> Cc: stable@vger.kernel.org # 0.98pl6+ (yes, really)
> Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

Upstream commit: https://git.kernel.org/linus/99d825822eade8d827a1817357cbf3f889a552d6 (v4.6)

Can you please assign a CVE for this issue?

Regards,
Salvatore
