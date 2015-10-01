X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["909" "Thursday" "1" "October" "2015" "08:04:12" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>" "33" "Re: [oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100114:04:12" "[oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" (number mark "        kseifried@re Oct  1   33/909   " thread-indent "\"Re: [oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1\"\n") "<CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>" ("<CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26484 invoked by uid 550); 1 Oct 2015 14:04:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26454 invoked from network); 1 Oct 2015 14:04:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=e69sMGcInbwkujCEBBUA8ZJz5bQJjonmwkhq6Z7MupM=;
        b=LEHUVqeje8pE91SdM1mqf8rX7+SjkC0JKxmG47fSuc6EEWIYq6V+/siWk+5DeG/8fA
         PB0czkUPMAUhP23wMzXbFhN3zgZsVT7itiQFx2Fbp63LPN71O91va6VhkFUbtB0mu5zE
         rodDygzrS4Wxm8AdThqUEr6qJMi8iECa7+OgZ+Ieads74aGoK7Q7h7ByXEBbtdLTOExW
         MM1Pwsl1sjtPkKVmU1niVdP4f6ItEGEexWMvSj7FYD9dNmVSjTGrq6LLMcKb5vmPF3tp
         eeNzKBLc3IG/tKXt7xPd3R/Z+BmIy4MAjoT1xvJmtL7Wlxfe2HMnrWvIamlvkqUOYmDu
         81cw==
X-Gm-Message-State: ALoCoQlQcI1n0kNMwrdlm9gc2tqKEs5fod1cBTNuGcsETxWwm4tbDtpFzAvPn6RlTSxWFdAlKV9W
MIME-Version: 1.0
X-Received: by 10.170.78.65 with SMTP id u62mr8269561yku.118.1443708252346;
 Thu, 01 Oct 2015 07:04:12 -0700 (PDT)
In-Reply-To: <CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>
References: <CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>
Message-ID: <CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113974108a99fc05210b85fa
Date: Thu, 1 Oct 2015 08:04:12 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: Heap overflow and DoS with a tga file
 in gdk-pixbuf < 2.32.1
To: oss-security <oss-security@lists.openwall.com>

--001a113974108a99fc05210b85fa
Content-Type: text/plain; charset=UTF-8

Can you please post more details, I know on our end there was some
confusion as to whether or not this is the same flaw or closely related to
https://www.mozilla.org/en-US/security/advisories/mfsa2015-88/

On Thu, Oct 1, 2015 at 6:59 AM, Gustavo Grieco <gustavo.grieco@gmail.com>
wrote:

> Hello,
>
> We found a heap overflow and a DoS in the gdk-pixbuf implementation
> triggered by the scaling of tga file. These issues are only fixed in the
> recent release of gdk-pixbuf 2.32.1 but affects older versions (we tested
> it in a fully updated Ubuntu 14.04).
>
> These issues were found using QuickFuzz.
>
> Regards,
> Gustavo.
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113974108a99fc05210b85fa--
