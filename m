X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["695" "Monday" "6" "July" "2015" "09:17:21" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSw185h5tpQdqQAFbxCOaUstSoCt=MRfjUYoxPazhQXtg@mail.gmail.com>" "18" "[oss-security] Out-of-bounds read in wget and curl using CVE-2015-2059" nil nil nil "7" "2015070607:17:21" "[oss-security] Out-of-bounds read in wget and curl using CVE-2015-2059" (number mark "        gustavo.grie Jul  6   18/695   " thread-indent "\"[oss-security] Out-of-bounds read in wget and curl using CVE-2015-2059\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9984 invoked by uid 550); 6 Jul 2015 07:38:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18342 invoked from network); 6 Jul 2015 07:17:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=8dKcYvbtVWT1Pc8WJ0/rNft/6dhySrCGcIVCOHj0pK0=;
        b=bhcIgemKZJIVfR1pl4Xm/MEBIa+fgZaZbNHyBkOMlEqIvc7hEtqOnYEA3C/M3FwZQM
         EtDxhzy2o8ztT8Nhd9IvpYOtkJLuoY3acx7AkY4gjJB/ZWTeKd4GokSA01fpFxTP49iC
         N1XYHscp/VRBZVfAmP8Sj1ngdAfGE/kA1J+jIt7SBn5KHJXbZD0PN5z/ug7pERxYRI3Z
         XzPtDKz60mzJxORD8+MWoxuUkUQ8bkt6gLll8NoxKYy1TjZ4ObSr9XN5fxENs+e0CUVK
         LuPZAWzeIFkABUl8mmqPmErcjHOTvueQjceymhyPKqgjErheVjZUwyrCoFPXKOTYVLAp
         TEUw==
MIME-Version: 1.0
X-Received: by 10.140.233.70 with SMTP id e67mr55983120qhc.7.1436167041852;
 Mon, 06 Jul 2015 00:17:21 -0700 (PDT)
Message-ID: <CACn5sdSw185h5tpQdqQAFbxCOaUstSoCt=MRfjUYoxPazhQXtg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 6 Jul 2015 09:17:21 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Out-of-bounds read in wget and curl using CVE-2015-2059
To: oss-security@lists.openwall.com

Hello!

As you probably know, CVE-2015-2059 was't fixed yet
(https://bugzilla.redhat.com/show_bug.cgi?id=1197796). Unfortunately
many applications are using libidn without validating its UTF-8
inputs. Recently wget
(http://git.savannah.gnu.org/cgit/wget.git/commit/?id=77f5a27e6506970c00b96570b6783c49582eacd7)
and curl (http://curl.haxx.se/mail/lib-2015-06/0143.html) applied some
mitigations.

After reading the previous oss-security related threads i'm still
unsure if these issues deserve individual CVEs or they are just
consequences of CVE-2015-2059.
A quick and dirty demo of this memory leak is available here:
https://gist.github.com/neuromancer/cfba1dae769db0551963

Regards,
Gustavo.
