Received: (qmail 32161 invoked by uid 550); 18 Mar 2026 16:23:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10013 invoked from network); 18 Mar 2026 16:18:00 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773850669; cv=none;
        d=google.com; s=arc-20240605;
        b=QikiuAaIi4OgIAmlNmd0PI5n8pAGNbTScCPVFUVBDBjMj+filTBCr29PZUso/p6dA/
         /kKKz1w6Lbfk0YzhUaNb06dKumMF0fOz6XAhuCIl1X245kCBdjQNg8FMLxoU8XI6Znc2
         xvcEIZmDrphAXLX47qDvuztwVsW75AHrEXVTgvktI1LRLy3qZri1S2hJZQU8sv6bijGV
         Mvt+kGmbEjPACg2EHKLRUvtNmVQlJkIr1ssKJ58G51awlD5T2HF8tib9/TwGSobaQT+k
         +nUU1tVEJq6iY8jcGov2QKLlzRK/DPKlztFc+lz1xKxQMzBE7n3ypxm7i/6ZNvJ5sHSj
         0rWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sC7+SCxUNAfYelXGnm6IMtEB9HbL5UaOTN8UYAx6aVU=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=Z0oL5Gmy9+X+LzbxGXT+WGf6iNGrXNWYw0ND+rb3E836y222zEtPt8JUyiEkUF46nm
         iRQypEptkVNv0XyO5SApLQ9O9lXbfd0HxCjXs67kX6Iwu/x505BqjTYwLHZFAQvTS0MB
         FOTVDf4SSIbkdeoZxvMVa3Va1p7cZV4jUy2i/2X1hXjTRDQf0v0CgffgsNQvEJ/ywvsu
         q70D67ekY72EKgy2KnWJyUsBW02dW5pJBBRsyHYjYPiNPhM+YrduN3uvpI7dSZM1tB9Z
         +Iyaf5ACbsh9b62OcWaEbNqZvLlThcEcWPjOh3BqEv7yDfwXNNS/5UCNOUh5w1636kA0
         qzdQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773850669; x=1774455469; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sC7+SCxUNAfYelXGnm6IMtEB9HbL5UaOTN8UYAx6aVU=;
        b=klXQYArnINHkpqxPejh51z0CiBvBkNof2QXKtNIliDOcvtYngznLbFTfYPoKat3vVl
         QcZUpf2LXUzMoTij9sSj4S1Z6BT4S3/OuJsIy8Ap34BMreaiuMFwXo8u8pIOk3oaduBF
         FwWRFJ7PKiT1/JsaYl09FSkOG9bkqNweLmQRlIHEvnotLd/koBDJ0ncl7C5p6DgkE+O1
         McO+rPAj9WPzSDY/cx1ddaQaoPLDdjCEjQXigq0RPL6XToNn4ZKbXq+x9yJq9Nl9LyNp
         G1rjjT3lqiEV4jybi8ifxwkYDZOU7L9Sf64PiebXw+YmhNr5BvwHL4H1m5dAJEZITY4n
         nb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773850669; x=1774455469;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sC7+SCxUNAfYelXGnm6IMtEB9HbL5UaOTN8UYAx6aVU=;
        b=RZAGtJMIWrB+KM5J8GVfGAsP50KM1HZG8NGvXFAkf5xOeHGvCC7Q0UeCasltvLBbw1
         kb8TMmxPGxOfxY1aqIbIIsetS8Jycpp7m9V5jHl5KWLgcs4CuT0ldRGi4SbbLp4zSx+X
         XFo8SUI69g1BdejmJkLV28hxBKEyrdkIGx99It85kSPxa5VdZe+F5MjCsVRm7rX27pqi
         nKLZ+/RZTKvuz+LDqPWIMoEVc+SKdRLa1lbQ3anDkralylHo6RS7z2T5iTMRwH4aM9uG
         QyjtjdypsfXJr0NJWP516VuVvOpGo4pSVx3b6gFDRr9jIc5RA2TR+b93nDX7z8PRbqOK
         0O9w==
X-Gm-Message-State: AOJu0YztOnReqIiWzzmT0TzcCfZvXoy9ZTb9y4yz8m/qkzfPAhHZuB8Y
	JqGBcsD30KZxFnDtsRB8FbF8AjvgPeFEAtfFBvwVDQnbI5hpNjnntJxBJU/iyU0yqFQSEpRekRX
	13TUuCnYDhTnya+GPC1mQzj8pFUca/KxHQ13x
X-Gm-Gg: ATEYQzzFNQvVOV00/F9BcO+QK0IgsIHHoh2+VP1STu04vDg6HX/1HnZ87VAiUGM7mdR
	C/K6oaRU9uYQsbJfDL1WCHjj3czQvURHb4ZsuZITSaQa00c1EN0Mc5iIi/Iq2MydfFz+QVJQrUC
	7AajvqgBNJ2qmHM4FTU78dNJPN4ZqDF7myxTFJw0zlGvnQ2K+XMiMir7mTBqOFx22UCvYZkpSnq
	CngtdUjyIHj0oxMhXLS05Dkg90/gaBrodJGCPWrc7gkRITJ+QvB62P8Em8Bkyn1VTcydHeKg8M+
	xDowf2J+tgMA1nqCK1AmX2vrqiki8igNWbXdC/oj9tjuB2NjSbgdtFLMtlpOv0F7pVbo7f3HkgM
	shA==
X-Received: by 2002:a05:651c:438d:20b0:389:fcc6:4906 with SMTP id
 38308e7fff4ca-38bd59b7202mr13855781fa.31.1773850669186; Wed, 18 Mar 2026
 09:17:49 -0700 (PDT)
MIME-Version: 1.0
References: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com> <20260314194919.GA4600@openwall.com>
In-Reply-To: <20260314194919.GA4600@openwall.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 18 Mar 2026 12:17:11 -0400
X-Gm-Features: AaiRm51vuLJa7xiZQIbMUOg1SGrFmBXJXrqygDgiFmcP-c2WbWQKg6Rx-VkuE60
Message-ID: <CAH8yC8kaxXPkwSc-yCAVKyJ-vD0GrfRD_z+DphDLwpXR+z=p-w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] OpenSSH GSSAPI keyex patch issue

On Sat, Mar 14, 2026 at 3:51=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:
>
> [...]
> Red Hat has now acknowledged that RHEL 8, 9, 10 are also affected (but 6
> and 7 are not):
>
> https://access.redhat.com/security/cve/cve-2026-3497
>
> They suggest setting "GSSAPIAuthentication no" to mitigate this, which I
> find puzzling.  Per the brief discussion we had on the distros list
> pre-disclosure, it appeared that GSSAPIKeyExchange is the option, and
> moreover it was said that GSSAPIKeyExchange could conceivably be used
> without GSSAPIAuthentication.  So which of these two options is/are
> actually responsible for exposing the vulnerability?  Does it maybe vary
> by patch revision (Debian vs. Red Hat) or (more likely?) is this just an
> error in the current Red Hat statement?

It might be worth mentioning that GSSAPIAuthentication is provided by
upstream OpenSSH.  GSSAPIKeyExchange is provided by Debian and Fedora
patches.  See <https://www.reddit.com/r/FreeIPA/comments/1ipjlgq/ssh_gssapi=
keyexchange_off_by_default/>.

Jeff
