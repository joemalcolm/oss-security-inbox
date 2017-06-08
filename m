X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["372" "Thursday" "8" "June" "2017" "17:04:57" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXctD5w7vuWEnPaivtdccpBO-cm6bzNQLU_LatPq0eE_8yA@mail.gmail.com>" "7" "Re: [oss-security] Is not memory allocation failure a bug?" nil nil nil "6" "2017060821:04:57" "[oss-security] Is not memory allocation failure a bug?" (number mark "U       glennrp@gmai Jun  8    7/372   " thread-indent "\"Re: [oss-security] Is not memory allocation failure a bug?\"\n") "<alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>" ("<Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>" "<alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9925 invoked by uid 550); 8 Jun 2017 21:05:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9895 invoked from network); 8 Jun 2017 21:05:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=VB1aUDw7/8pjkmJUMojOuD9uKbagYWTasvEfqQP9yoo=;
        b=HKnQDcpwZvj9ZEfpJGNXy5X3fAoi83QyrJ5bqdMpqpsiHcrjrZW/Q8Yc6j9ctN/8X9
         beanD8jNRKuG+sJEz64IrW6h0rgbPlrCRlApfO3Drt36HvftGiHhRXg1SIooUY1mjUxD
         2uaOB6fenSST2upcowU+SW+18e7aT3LRoh5fdlaGYvIsckUslbFr6uvrKEkB0iqcFaTY
         MB4wVBJh3MGEXGj/RM8c4pNWi2qvw4XvrHk8BpgrGn0Ft5w93zuVlonuFg9/XKQHhwu7
         GPCMZLRcG1XE/ZABeP2ZdmvHMnucVhtVdrCTbS98jVWuYVLbP5xE72vyLrCoUOton8zm
         Qfpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=VB1aUDw7/8pjkmJUMojOuD9uKbagYWTasvEfqQP9yoo=;
        b=I7wvSXTvouvYi41yXA2GNgLAidZvzFSqEnuQ+RSc+UqvVNYJ6SVTLevlrFpgDn7m/A
         QRM7PvOq6R+zuGlOK0KJm7AInXtjXob4HmJ4L7VfGd3LTDCZAvU66H1SBrhUBSNAJBhb
         DN1qnosuqKoHl4DTiZTH5QgjtCWjSBhCdVooIUqVmynC+yfLqHlNtbI0l73EtOJzfvbl
         sUn2tf7sHCVNuer3DQrKbz8tvTFRXCjsHjaX4s2S4bfAnYDR8CmOXYpOO1F6J1FI9Hjz
         QPHbN+WtEFnnVR6OovUa9/mM9FL5mzpJqQ/fcF0B7M7JEZV9RKh1N8c0997xpdQHdv4q
         k31w==
X-Gm-Message-State: AODbwcD4ZNEOxiM5YqjpU6nvDywV5dfbvD7EgF7Q5z/X4imBk0xQZirn
	/Dm0ggDUi/0986joGTWK7m2W+pOoSw==
X-Received: by 10.107.174.36 with SMTP id x36mr15074077ioe.202.1496955938133;
 Thu, 08 Jun 2017 14:05:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>
References: <Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>
 <alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Thu, 8 Jun 2017 17:04:57 -0400
Message-ID: <CA+PdXctD5w7vuWEnPaivtdccpBO-cm6bzNQLU_LatPq0eE_8yA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Is not memory allocation failure a bug?

I just checked a fix for one of those into Firefox yesterday.  It wasn't
considered a serious problem because the malloc would eventually
fail safely, but it's better to predict the problem ahead of time and not
even try to malloc all available memory.

See https://bugzilla.mozilla.org/show_bug.cgi?id=1368407
in which a tiny PNG file tries to claim Gigabytes of memory.
