Received: (qmail 5816 invoked by uid 550); 8 Sep 2022 11:26:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23664 invoked from network); 8 Sep 2022 08:54:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=ACS//QR4tdaCdn43cBw2y3N+NdHxtfLN7fhJh2wVWc8=;
        b=PILbutmT3h7Kbz6wn5qTcQFZ+M4NLKBCm+8ANeQD/BHxGLD89/OlNy7r7PioODTkiv
         BsveiZ915tXwh8iZaPs8bfaPmH+Ji9+hdrEAIaduM+hJHC9NegwzCPLPAH8nKCYYV10t
         I+JpfPpmTqBch8FSzUsKhaqzPXjvYA7EpWy/5CfavuqzeTw/Bp2R1xHjocdkyQccYxm5
         pBnUkeUzb7tiibA2ZGS8S15emk8hGqfFyUmEAMOLZgAGlYCG+9bPae5TOmICi1b+ruej
         AM4SIl7AbRj3bgytgqecLU6tED+qXWXnPA+36qW94C1XplCHhZqvW5cHSJqaCnw0T7iK
         3d+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ACS//QR4tdaCdn43cBw2y3N+NdHxtfLN7fhJh2wVWc8=;
        b=d25XC2sErxeUVWm6zJCytGRKM3aGIQRJtBGLtTMb27jSwnQXRJFA0ir+PrS3pLSCVZ
         DNJ+6NawcZpT+JUxVROloNXjjWiPPz180ut5w5cdWAaKpD37ZSz0J7EQkpCJagi67gUP
         vLXqEE6MFjoZxqaK6jnEu1v0km+mvByNrdMtyE1fo3Ejewm/hLGyApt0J+h/svK0Xek0
         2rHWxF9ngB9EzEaADt9QzdGll9o+VPECIYTE/Q6p5A2Fk1f/XspfPZDhzNdS7/B+hPZv
         mLXlus/z/8CZXaudg6kjvQlRruooUkjcDTbcGdUWrkWVIdRSjrMzA+wEEOSkDuVthVMK
         RqGg==
X-Gm-Message-State: ACgBeo1LRv5x+NDKzY+ednNP/wsYuLxXteuFAZOkVLmSa+hmI8WTTW1U
	Szab9DkPlgLeBAX7bjaMysBcvNV3xEdryW0ieLEtPMt2XhU=
X-Google-Smtp-Source: AA6agR6jyF/6D0DzIEtQuwGHxHcrskNq9ydW2Dz4m3yByHFm4N7YB3eGaC13tuK50wIJivWb8aWfKu2zRdJCqFxNTs8=
X-Received: by 2002:a1c:4c03:0:b0:3a5:d65c:c1e7 with SMTP id
 z3-20020a1c4c03000000b003a5d65cc1e7mr1560128wmf.4.1662627248493; Thu, 08 Sep
 2022 01:54:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org> <CAH8yC8k8C-gp9upSpJLsXrhBB5-qSnKGeP34+32A-_s5YG3UTA@mail.gmail.com>
 <20220907013017.GA1357227@millbarge> <CAGUWgD8f4V3uYf7wLjfHarRSwPo1PgqwDSWcNX6LaO_Cgco8vA@mail.gmail.com>
 <87o7vrksad.fsf@hope.eyrie.org>
In-Reply-To: <87o7vrksad.fsf@hope.eyrie.org>
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 8 Sep 2022 11:53:56 +0300
Message-ID: <CAGUWgD-UcCLieARno1B_Oei9dgnntoOod2bcncuc3vy6Yyu+eg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

On Wed, Sep 7, 2022 at 8:31 PM Russ Allbery <eagle@eyrie.org> wrote:
>


>
> The ability to make a program crash is not inherently a security bug.

1. This is nearly true story: On a mailing list someone posted crash
when parsing the Subject header in one the most popular MUA.
Whenever the user tried to open the folder, the MUA crashed,
preventing reading the list.
Users without technical skills needed technical help to delete the DoS mail.
2. coredump takes space.
