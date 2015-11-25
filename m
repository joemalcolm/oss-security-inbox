X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1457" "Wednesday" "25" "November" "2015" "09:51:17" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3QYgGBCZHhMVuyUBtv2-Gh65va4-QXQVZb2TDwAQPMQw@mail.gmail.com>" "44" "Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" "^Date:" nil nil "11" "2015112516:51:17" "[oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" (number mark "        kseifried@re Nov 25   44/1457  " thread-indent "\"Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/\"\n") "<CALPTtNUugyG4V3nF4vRjLRtqJfFp2kYR_LM-J5V2Z8gGEypCMg@mail.gmail.com>" ("<CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>" "<CALPTtNUugyG4V3nF4vRjLRtqJfFp2kYR_LM-J5V2Z8gGEypCMg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28335 invoked by uid 550); 25 Nov 2015 16:51:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28311 invoked from network); 25 Nov 2015 16:51:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=T72ODNXcq/g+dwCYU9qsQJQ1MoiW9vkQLb06cAOFwNA=;
        b=ikgNnqcCOUKSKO5kxl2L/AudKq9C9F+8vz2KTS1PEtsZnws+Un3g4B3c9S4O6wGhrG
         vIYeWSPfVskABONhvgW5AYM9PWAuFoLhpOKOgtOv23Etku1WO6haUo8LbJsZoTuPjpJo
         Lwep3RzYm1r56biZcu/0zwR2TkKrHlSMBKjVbRBD7uXJoLWSAJFoWpu8NL21yuCqhZ+i
         oAHZPA/ajNbl6jlLzsMzjTT2NEnz3kZqXxETNgbMtlNeHbrfxwp+EuXX0dihdyi4sFY+
         CuLz3sGZ4RuZAI8hkZgqbMo81bw3vRPa10qQySRm8PwHOR1vSWuF/zOJiMfNEyN8/nz/
         yoeg==
X-Gm-Message-State: ALoCoQnZDxROpizQRsb/hUXG5BLzgCSwuFKQWQAuMHUIK7WFctmQTKjvb1nOql4AavFyalfm7hUa
MIME-Version: 1.0
X-Received: by 10.129.125.193 with SMTP id y184mr33426906ywc.182.1448470277293;
 Wed, 25 Nov 2015 08:51:17 -0800 (PST)
In-Reply-To: <CALPTtNUugyG4V3nF4vRjLRtqJfFp2kYR_LM-J5V2Z8gGEypCMg@mail.gmail.com>
References: <CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>
	<CALPTtNUugyG4V3nF4vRjLRtqJfFp2kYR_LM-J5V2Z8gGEypCMg@mail.gmail.com>
Message-ID: <CANO=Ty3QYgGBCZHhMVuyUBtv2-Gh65va4-QXQVZb2TDwAQPMQw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11492bfc58c34005256044a5
Date: Wed, 25 Nov 2015 09:51:17 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/
To: oss-security <oss-security@lists.openwall.com>

--001a11492bfc58c34005256044a5
Content-Type: text/plain; charset=UTF-8

No, more of a "we'd like to avoid a superfish" and then I realized we had
some legitimate certs/keys for sure (e.g. firefox/bind) and.... maybe other
stuff? who knows. As an industry we have very poor visibility/inventory of
what we ship/how we ship it/etc. Witness all the SSL/TLS config issues
where many vendors can't really answer in any sane time frame how badly
they are affected.


On Wed, Nov 25, 2015 at 8:54 AM, Reed Loden <reed@reedloden.com> wrote:

> Great idea, Kurt.
>
> Is this related to this recent CERT/CC advisory?
>
> http://www.kb.cert.org/vuls/id/566724
> http://blog.sec-consult.com/2015/11/house-of-keys-industry-wide-https.html
>
> On Tuesday, November 24, 2015, Kurt Seifried <kseifried@redhat.com> wrote:
>
> > https://github.com/RedHatProductSecurity/Certificates-Shipped/
> >
> > The idea is to create a comprehensive list of shipped certs/keys/etc by
> > open source vendors/distributions/projects so that:
> >
> > 1) we have a list of secrets maintained by external parties that we rely
> > upon
> > 2) we can audit them and make sure we should be trusting them
> > 3) also spot changes more easily (since the existing corpus is available)
> >
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11492bfc58c34005256044a5--
