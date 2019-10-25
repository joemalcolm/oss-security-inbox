X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["414" "Friday" "25" "October" "2019" "13:43:57" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>" "12" "[oss-security] Formal verification of open source software" "^Date:" nil nil "10" "2019102510:43:57" "[oss-security] Formal verification of open source software" (number mark "        gguninski@gm Oct 25   12/414   " thread-indent "\"[oss-security] Formal verification of open source software\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Formal verification of open source software" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28190 invoked by uid 550); 25 Oct 2019 11:15:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19805 invoked from network); 25 Oct 2019 10:44:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=w2vaoeYkboExSpQ5+fq1v9RWg49ZieHMZEYD45LHcWg=;
        b=Z2MqOL853MdQJ+llxNl4Z8FTehljGP+H1B3WQ11xLNcPtQ3/0aU6AWucKjwN92e2sf
         CNg0kdaXtWIRhQ730QMGUkz9EN5dQLt+ZrfF5iiM9dDmdH6jd1ASEAL4E4sHQLynkkKj
         mrUoXj1ozeoHmPlKojGaexkc+IS6u9Ue1clmt3uOMLeUuLfstR0f96tSj4zImdScqfC/
         mnucyKP2q4XPDtllpoyoDkTqw4Q/UOans1sAHVobSDuGCBXJgUOzzrmDAC+FP9SCHt+f
         hL+SBNiu1u3d9ebNXwgw1IAa00/spHAEL69B9/tf2+lMdJPZpwizFDiCBrV+A4hPJLGx
         UfkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=w2vaoeYkboExSpQ5+fq1v9RWg49ZieHMZEYD45LHcWg=;
        b=ufXQLWXW9Uib16rKUBJ0rb3DWd5GvvMGq84nGyJ7sTNfuFJo3VUOoosZ8+ftvu4Po7
         4a/ukDyrLl+p0PuYKN89fL1VSZgdHsLZPBQ+qiA/GUDHuCAZ2swIuPpkMC3Cn6/hHl30
         BHOJYxSJ6dY67m+bAGfIr0wLqeljhTgGTX5x8bIpeawEoldLlXrlQ+dpw5o3uwr/jcDB
         VpWLfonaMqp1k58huCRjUc3lDfb53xNIkxb7WWQWUcQFUmp/M/RO/mMKluZXR1h3VIG1
         5CFKCZ7G0Oobe9nwRDi0x5Xs/Gwsxg/621cSVZ+PgcsJYQAa5QfOe/LzEBADFKyqxAax
         0dig==
X-Gm-Message-State: APjAAAWWrD+Lr73UXDVpoqvXLtgEYkHmgUCOWjdWm/6TUSTpYBO4pLdo
	5BefumQCRS3nIeJKNJ2SBGY6lfyGTlZe5piWwlrYT0LV
X-Google-Smtp-Source: APXvYqyTw7bqutcMRSyAGwVgAOugUV9ybCqYpqpMwzM/15c4dc33CCNIgG7QrSeGP62vjgSGb/BFvaCztN7IcjhiVL4=
X-Received: by 2002:a02:300f:: with SMTP id q15mr3280979jaq.6.1572000250792;
 Fri, 25 Oct 2019 03:44:10 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 25 Oct 2019 13:43:57 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Formal verification of open source software
To: oss-security@lists.openwall.com

Are there success stories of formal verification of open source
software?

IIRC there was kernel verified by the Isabelle prover.

>From experience, I am skeptical about bugs in provers
and had false proofs in CBMC and Coq (long ago).

PS: I am looking for remote job. Probably you don't I
want to sell out to the communist party of
People's Republic of China or the NORKs ;)
CV: https://j.ludost.net/resumegg.pdf
