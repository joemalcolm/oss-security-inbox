X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1231" "Sunday" "5" "June" "2016" "19:18:02" "-0500" "Jodie Cunningham" "jodie.cunningham@gmail.com" "<CABfY0L3cfjwEENQTXtyx6z9Sqy6kFPqFHmQPHe_a5yzveJ8Eng@mail.gmail.com>" "41" "[oss-security] Re: Requesting CVE for ImageMagick DoS" nil nil nil "6" "2016060600:18:02" "[oss-security] Re: Requesting CVE for ImageMagick DoS" (number mark "U       jodie.cunnin Jun  5   41/1231  " thread-indent "\"[oss-security] Re: Requesting CVE for ImageMagick DoS\"\n") "<CABfY0L0q8fJjyyHKpZumOesDm72yNwebVQxa21TStFhAO+3atw@mail.gmail.com>" ("<CABfY0L1tAvrzxmmPJOXj61Z2dX_j41GYu-DY25HmSLo1TXnfqg@mail.gmail.com>" "<CABfY0L0q8fJjyyHKpZumOesDm72yNwebVQxa21TStFhAO+3atw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11965 invoked by uid 550); 6 Jun 2016 00:18:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11863 invoked from network); 6 Jun 2016 00:18:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ajDOnC6yU2omDLzNkUcDsCWRyWpl4XWBpeB7NBjkWEo=;
        b=iObubwVSSIhJNweG4SCJ20fDYURIqF+GAyt0pswHPuIUmHTPdEk4I/ksWuHiLSIBQh
         HP5zOoEydbrIbz3mcs7wcz/3FSZFi3Is5KGAQo9KQuYT6Us1EYvAJxdccJodSTcN5P51
         mc9PC1c2NQit3IDExfSI8pDH3bkMaO4PUc49+Nd4MJnJCvbgr0/dFxcZaehMQKC50v3A
         nDJocdHYDOHygJmL/9SK7ppdke+C6CMHBHqEG3f/Cqkqb3i3IXeBHL2KpFuKnqnGIV+I
         Y8Z9vO7qvKgwhnvboI+4upJngF1Sky+QkkHX5L9YkNU7gyf+R/ZUa/EGEFpLHu+vmfzs
         bg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ajDOnC6yU2omDLzNkUcDsCWRyWpl4XWBpeB7NBjkWEo=;
        b=EaIHO8PiveN1V606vTZFsjH9S9qWyf7duUYqwhCHOWO89ODNjDTqNQR4uBKLjoMWGx
         Uz4ItEbxD884wYq+ZZApbOPJ+fMN2GxFQZ9Xv+SuYCEeqvtDHzzVFEYFVQDyQb7sw2e0
         q3HzDUcExxNC7coOJ/dSxxf71kbcO2fPfK6VvX/Ba5PuQFHtCRzyB2fGVB/RVAAA7laH
         99H/2o6cwxImpPeHgI5r6OlM0+4zO+Kh+CDRaplGUmgeNRkzwhjHQVpwyGgrThqzXFHB
         4YUw5Wj7Zaj91HyU5p4cgjn2plotzT07WQwnWe3IZKJZZeuDzCcK0JBT2gnApC1M7AKP
         D7jg==
X-Gm-Message-State: ALyK8tJhBcdnHtIJwBN8Os1twi0C69oy2ObKvCOO1PNcdAaIx5Wvo+HOpEfUM5moIiaq1q39t9bBQqMdqgYJ5g==
X-Received: by 10.159.40.225 with SMTP id d88mr7088088uad.73.1465172283059;
 Sun, 05 Jun 2016 17:18:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABfY0L0q8fJjyyHKpZumOesDm72yNwebVQxa21TStFhAO+3atw@mail.gmail.com>
References: <CABfY0L1tAvrzxmmPJOXj61Z2dX_j41GYu-DY25HmSLo1TXnfqg@mail.gmail.com>
 <CABfY0L0q8fJjyyHKpZumOesDm72yNwebVQxa21TStFhAO+3atw@mail.gmail.com>
From: Jodie Cunningham <jodie.cunningham@gmail.com>
Date: Sun, 5 Jun 2016 19:18:02 -0500
Message-ID: <CABfY0L3cfjwEENQTXtyx6z9Sqy6kFPqFHmQPHe_a5yzveJ8Eng@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: Requesting CVE for ImageMagick DoS

On Thu, Feb 26, 2015 at 2:50 PM, Jodie Cunningham
<jodie.cunningham@gmail.com> wrote:
> Adding cve-assign to cc
>
> -Jodie
>
> Hi,
>
> I wanted to share four DoS bugs I found via fuzzing with AFL in
> ImageMagick, as the maintainer has since corrected them. I'd like to
> request the appropriate CVE(s) to cover these DoS bugs:
>
> Date, File ID, ShortDescription, Bug report URL:
> 1/24/2015 3c1c3e63 HDR file DoS, CPU
>  http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26929
>
> 1/25/2015 d595506c MIFF file DoS, CPU
>  http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26931
>
> 1/25/2015 c8ad6aba PDB file DoS, CPU
> http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26932
>
> 1/25/2015 783d8806 VICAR file DoS, CPU
> http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26933
>
>
> Regards,
> -Jodie Cunningham


While it's a party, are there any identifiers for the above?

Also here are the downstream tickets for them:
VICAR: https://bugzilla.redhat.com/show_bug.cgi?id=1195271
PDB: https://bugzilla.redhat.com/show_bug.cgi?id=1195269
MIFF: https://bugzilla.redhat.com/show_bug.cgi?id=1195265
HDR: https://bugzilla.redhat.com/show_bug.cgi?id=1195260


Regards,
-Jodie
