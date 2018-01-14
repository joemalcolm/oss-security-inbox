X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2060" "Sunday" "14" "January" "2018" "08:38:35" "+0100" "Michiel Beijen" "michiel.beijen@gmail.com" "<CABD0r12nvkM2zhaSKNPU84jzEqLuvFy9=1yzFKCQuyXaCBPCNQ@mail.gmail.com>" "64" "[oss-security] Re: DBD::mysql and SSL/TLS" nil nil nil "1" "2018011407:38:35" "[oss-security] Re: DBD::mysql and SSL/TLS" (number mark "U       michiel.beij Jan 14   64/2060  " thread-indent "\"[oss-security] Re: DBD::mysql and SSL/TLS\"\n") "<CAFHm6iuD6BpN8JZeF9qhjWQFpUKar7fiumszdWwCBtE03m9N+g@mail.gmail.com>" ("<CAFHm6iuD6BpN8JZeF9qhjWQFpUKar7fiumszdWwCBtE03m9N+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8168 invoked by uid 550); 14 Jan 2018 12:40:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27766 invoked from network); 14 Jan 2018 07:38:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Zbqnvschd8rK3uNNT3kmWflGPeYTpxVhLavClASc3u4=;
        b=i0FVhLKe7QWtGwMhLQBynUoSbpE8g+RfllLPoZfsgyQWjN9AdQf3KMYZtxo1A0md3K
         N2DxcLDq12aXujn3iCltlF5ktfqC/ssShGluiUJJML+QD3ph67nKDej9w9dKQHmATVYg
         sL7WmHBvjU5stXy95BwvFhyQMqgXq9JCoMTvaBYInTe0yemvEHN2M1xxt3QdSBxzUpp3
         b8186Jq9MbgOquQMs08tYpI7lMA6Zoz2v71xr+AP7qjtHvkc5LfxWgVf2axKXgAq4RcE
         tsOlGeeyRiaFM1x08XAt3i9y0xfIlTKyTw4tbKn6bOrW0EOPLBcjXJJwwsvvEaVo65+j
         wCJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Zbqnvschd8rK3uNNT3kmWflGPeYTpxVhLavClASc3u4=;
        b=ajD4PXO7ANCu9Yv2ti22Ab8uyk9IzdPVCJRnd4cpADagxkbJfPkWmQ1VMHv2bhnKNK
         4lHx+jf5SdE8hhCbFh2o2vciCmQFCO4CGLNE+AAi492Lwkkmtbw7w5/fJXT2tHSU/L2z
         RoUVay+UQd5cxpmo/KjT0U1dEvTV5WJCEUF46ITFb0RIF0xrPSf/WCuedxe5zpEFby64
         7KXLKeAQnznIc4h5zgem2TF9bncgX5MjfXYfQyB8n83zYjGX9Cuf8sjrCKv1FY86nz7U
         tTICpKu6bT3o9n1JOvz2RB1uRj8uUhvXsuuad+ddxObJX/xvZ7Ucn/PBeoJF7uLNT0IG
         LPDQ==
X-Gm-Message-State: AKwxytcHz7DPUjsVhBsng0gTv/VFBKo30iKRmTCsdzy/JImuHaU25RHW
	zyEA1KjXwhlyicpPlsJwAuBVuClEqGBMRRadoA==
X-Google-Smtp-Source: ACJfBosk78w46naAVgMKSn9wBUFXBQHkdf22flRDrps7+zhZHRpW/GA1s9G2p0wPCioKaAaqJ26UlcpkwUzuv9yGEAI=
X-Received: by 10.107.175.103 with SMTP id y100mr3808844ioe.45.1515915517043;
 Sat, 13 Jan 2018 23:38:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAFHm6iuD6BpN8JZeF9qhjWQFpUKar7fiumszdWwCBtE03m9N+g@mail.gmail.com>
References: <CAFHm6iuD6BpN8JZeF9qhjWQFpUKar7fiumszdWwCBtE03m9N+g@mail.gmail.com>
From: Michiel Beijen <michiel.beijen@gmail.com>
Date: Sun, 14 Jan 2018 08:38:35 +0100
Message-ID: <CABD0r12nvkM2zhaSKNPU84jzEqLuvFy9=1yzFKCQuyXaCBPCNQ@mail.gmail.com>
To: =?UTF-8?Q?Dani=C3=ABl_van_Eeden?= <daniel.vaneeden@booking.com>
Cc: DBI Developers Mailing List <dbi-dev@perl.org>, oss-security@lists.openwall.com, 
	Patrick Galbraith <patg@patg.net>
Content-Type: multipart/alternative; boundary="001a1144a2b6e728760562b79581"
Subject: [oss-security] Re: DBD::mysql and SSL/TLS

--001a1144a2b6e728760562b79581
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for pointing this out. We had applied these patches before but had
to revert because of breakage created by other changes in the code.

The difficulty is also that mariadb and MySQL use a different approach to
handling TLS in the client libs.

I'll make sure we'll apply this PR again and create a release ASAP.

--
Michiel

Op 14 jan. 2018 06:49 schreef "Dani=C3=ABl van Eeden via dbi-dev" <
dbi-dev@perl.org>:

> Hi,
>
> I have some serious concerns about the state of SSL/TLS in DBD::mysql.
>
> Issue 1: CVE-2017-10789 isn't fixed
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-10789
>
> Issue 2: Using DBD::mysql with MariaDB 10.0 or higher or MySQL 8.0 or
> higher provides a false sense of security
>
> SSL_LAST_VERIFY_VERSION is set to 50799.
> Any version higher than that silently ignores mysql_ssl_verify_server_cert
>
> This can lead to unencrypted connections even with strict SSL settings.
>
> Issue 3: If SSL support is unavailable but ssl options are set then these
> options are silently ignored.
>
> issue 4: If compiled against MySQL 5.7 then SSL/TLS is used when
> available, but can't be disabled. (mysql_ssl=3D0 is ignored).
>
> This makes upgrading to 5.7 more difficult. And 5.7 is needed to get
> support for TLSv1.1 and TLSv1.2.
>
> There is a patch available for this:
> https://github.com/perl5-dbi/DBD-mysql/pull/114
>
>
> --
> Dani=C3=ABl van Eeden
> Database Administrator
>
> Booking.com B.V.
> Vijzelstraat 66
> <https://maps.google.com/?q=3DVijzelstraat+66&entry=3Dgmail&source=3Dg>-80
> Amsterdam 1017HL Netherlands
> Direct +31207033812 <020%20703%203812>
> [image: Booking.com] <http://www.booking.com/>
> The world's #1 accommodation site
> 43 languages, 187+ offices worldwide, 96,000+ global destinations,
> 1,200,000+ room nights booked every day
> No booking fees, best price always guaranteed
> Subsidiary of the Priceline Group (NASDAQ: PCLN)
>

--001a1144a2b6e728760562b79581--
