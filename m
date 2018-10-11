X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2061" "Thursday" "11" "October" "2018" "10:42:54" "+0200" "Emilio Pozuelo Monfort" "pochu27@gmail.com" "<07c253db-bcc4-4be6-3bbc-159f8b6e85ef@gmail.com>" "44" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018101108:42:54" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        pochu27@gmai Oct 11   44/2061  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181010170418.7bd2dcc0@computer>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" "<20181010145330.63e183d8@computer>" "<5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>" "<20181010170418.7bd2dcc0@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3400 invoked by uid 550); 11 Oct 2018 09:44:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14026 invoked from network); 11 Oct 2018 08:43:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pYR+QWLc+mlSMILVrIHb4VqCMVOOqgluPxspl4m8mAY=;
        b=sdONQVFy7jNeB0ZqUNCCeq1jDb46M54oAR+6H/rf9ihtzwcILMOpDlAyVomnPJc92Y
         Qnh4BBJbs3uFNTZcO7i+0H7k1VkydsVEOvgkC+qgTIYnuQ088u+uAAewUGQxXnCg6/9N
         VuC5gbIaRMneI37BQYI7W1288cT/YYdsly3V683qxGWUbTLf+WJmHly7jH+UWk9eN86q
         jYReACaVjJT6MOoPVMMcfkPk3ZEmlEkLii1nr6Xmb9cZjzZN5EB8sfwZuPif78MfDSo/
         BJBHrM240d4LUqwbGEaCMkjpHCtSDqzd66wkYxPHzpPsf/2aEmvNNlWvHxqaH3aGYwnj
         RVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=pYR+QWLc+mlSMILVrIHb4VqCMVOOqgluPxspl4m8mAY=;
        b=j0LJ6KPzLvYV3n4Y4fUdFIY26TEGbswVC/SxIyIKPQoKSbC764JNF1Mc2qFqEEiT+O
         wa6AMs4M8PartqfEuEJO7cPpGQUhBEp+zHtytgBaA0oTUkf7k0tuPesGmjvAX4LHJujn
         zCMWgbLnVS/rHB3/pJiLlKa0F4v/3Amkcl9qtcgorDqvtcw6vH1ApTNJ7c9862ldCq8R
         I4QGX7FJjo8sQ6ZrS5hivJxDnTQsXTx60xdYqe+dSsiWQp0DQdi+FdxKgLGysrugNOz9
         BKAZA3Zf1g23c9xVqHy2Lu/F6lGcCNKZ52YqPN2dHgnINgGcwvOU0on/ohN3uA+Ueav0
         yFbg==
X-Gm-Message-State: ABuFfogwiw3OAwQQpT5whyplA+NGPQpyfby/kYSTjqkDY20zfwh0BKeQ
	xZcu7mnVFYPPXAvaPpTQCN4=
X-Google-Smtp-Source: ACcGV626C1nHiOlLUYeA3//iCJnXupyZvGgI095ssCnWlC4Z3TEmvjVYgwfFVBiHBJZq0i9rDHb3+w==
X-Received: by 2002:adf:8909:: with SMTP id s9-v6mr653514wrs.309.1539247376826;
        Thu, 11 Oct 2018 01:42:56 -0700 (PDT)
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
 <20181010145330.63e183d8@computer>
 <5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>
 <20181010170418.7bd2dcc0@computer>
Openpgp: preference=signencrypt
Autocrypt: addr=pochu27@gmail.com; prefer-encrypt=mutual; keydata=
 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 vg==
Message-ID: <07c253db-bcc4-4be6-3bbc-159f8b6e85ef@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <20181010170418.7bd2dcc0@computer>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Date: Thu, 11 Oct 2018 10:42:54 +0200
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com, =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>, Eddie Chapman <eddie@ehuk.net>

On 10/10/2018 17:04, Hanno Böck wrote:
> On Wed, 10 Oct 2018 15:36:52 +0100
> Eddie Chapman <eddie@ehuk.net> wrote:
> 
>> But I'm still unclear how "just browsing a website is enough to
>> trigger the vulnerability in some common configurations." Are we
>> talking about the user looking in their web browser cache directory
>> on the filesystem using Nautilus, and hence running malicious code
>> embedded in a cached file via the evince thumbnailer on opening that
>> directory? Or maybe Nautilus/Gnome automatically runs the thumbnailer
>> on every new file created in the user's home directory (via
>> inotify?), including whatever the browser saves in the background
>> (hopefully not)? Or is it just a case of the user opening a
>> downloaded file with evince and becoming a victim that way? Though
>> that is not exactly automatic, most browsers show a prompt asking
>> what to do with a downloaded file.
> 
> I don't know what exactly Tavis was referring to, but a scenario that
> has been discussed in the past and likely is still possible in many
> configurations is this:
> Some browsers (notably chrome) will download files without asking in
> their default configuration. So a site can make you download a file and
> it ends up in your ~/Downloads dir.
> 
> Desktop search tools will automatically index that (tracker from gnome,
> baloo from kde). So voila - you can fire up an exploit if you can
> exploit anything that tracker or baloo support.

tracker-extract / miners run in a sandbox these days. No idea about baloo.

https://bugzilla.gnome.org/show_bug.cgi?id=764786

Cheers,
Emilio

> https://scarybeastsecurity.blogspot.com/2016/11/0day-poc-risky-design-decisions-in.html
> 
> Though I'm not sure if either of them uses ghostscript, a quick check
> it seems that not. You still have the automatic download issue in
> chrome, but you'd need to convince your user to open up ~/Downloads in
> a file manager. That's a minor not-fully-automatic part, but I guess
> it's plausible enough that users will eventually do that at some point.
> 

