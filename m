X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["642" "Monday" "3" "July" "2017" "10:00:07" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<20170703080007.GD2102@pali>" "24" "[oss-security] CVE-2017-10788 for DBD::mysql (Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close())" "^Cc:" nil nil "7" "2017070308:00:07" "[oss-security] CVE-2017-10788 for DBD::mysql (Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close())" (number mark "        pali.rohar@g Jul  3   24/642   " thread-indent "\"[oss-security] CVE-2017-10788 for DBD::mysql (Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close())\"\n") "<1497534642.3053.3.camel@redhat.com>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>" "<1497534642.3053.3.camel@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13804 invoked by uid 550); 3 Jul 2017 11:27:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26083 invoked from network); 3 Jul 2017 08:00:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=RQhqbtH7s7eEUrohuljlYROlTiMaE3u1ZQ2a8OQ1zVw=;
        b=EDxD+k2lx0sio0ubwd9WY/lUDi0dsZtqzGC/1+df72WCMUaL9wmL/CfjR0qssuMxpU
         yddHGeLXVI81ClUBUmEhc4ML0iqHXKMgCeoeboxfR+HCP/v0y4EHVjpMERqT+/WpasFu
         /txwsG9C4l/GV5c6uaH8OCeNd3KRYDDGa5FsvLbGWqt7ydG2pji7aXT5ewsZ8OCiMRIs
         KYpwtu3bBFPQYSyQ30wI7wPdHcwC2tyVCk+QS8IuyJ5GpSWs9wPsSYnNd5gKpTKtP6s7
         WqIwEGKgBHgJwgZNbtcznDMxEa9R4OVHtzLllfAnjZNvQPzlF8OpbfgwtdOywg4eA0f1
         OipA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=RQhqbtH7s7eEUrohuljlYROlTiMaE3u1ZQ2a8OQ1zVw=;
        b=hq6SeNoEG4CrWfLpGNKgC+maim5P1wmV7mnlDqxaUTFMzmcfGbltemFwOB7Z/Hgbix
         mmgtfiiUtc/J1oKgeuocYXKNeCKL9i46r/htKbJabhfCMw9PWOFK0N0faTU0UHfpBv3f
         LG3iXxJdNJCsSozRo04lNWMQ8RO80ARBD39zh9nTMOZ7oLnLkT7/psXdCeMukyBfXA9A
         JxNcP/rM8IEtA+FWbyFk+H3m2lg9FpxdDCG6rvs35I93NmfyyBaDjEzI1ggBoDndZPmJ
         ER+/AvFkK3hQctceqZmSQHlkvbjIfMXOqHKS1ODeQMz7Iwkcinw7UefvPB2k9nuG8wp5
         nlpw==
X-Gm-Message-State: AKS2vOwtUdaTE7s5c8Pov4KKbzKkgLH2g1q9SuaRUFFvrIwNVeLamePX
	T2y+2LTBX0YTDQ==
X-Received: by 10.28.109.18 with SMTP id i18mr13072599wmc.97.1499068809422;
        Mon, 03 Jul 2017 01:00:09 -0700 (PDT)
Message-ID: <20170703080007.GD2102@pali>
References: <201706082349.03355@pali>
 <201706122347.54536@pali>
 <1497534642.3053.3.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1497534642.3053.3.camel@redhat.com>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Mon, 3 Jul 2017 10:00:07 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-10788 for DBD::mysql (Re: [oss-security] Re: MySQL -
 use-after-free after mysql_stmt_close())
To: Adam Maris <amaris@redhat.com>

On Thursday 15 June 2017 15:50:42 Adam Maris wrote:
> On Mon, 2017-06-12 at 23:47 +0200, Pali Rohár wrote:
> > Hello!
> > 
> > Any idea how to handle this particular problem?
> > 
> > 
> 
> Hi!
> 
> Given that Oracle (silently) updated the vulnerable example in their
> documentation, this likely indicates the way to handle this -
> applications that copied the vulnerable example needs to be fixed and
> CVEs will be assigned per application.
> 
> Best Regards,
> 

Hi! Just to note that Mitre now assigned CVE-2017-10788 for DBD::mysql:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-10788

-- 
Pali Rohár
pali.rohar@gmail.com
