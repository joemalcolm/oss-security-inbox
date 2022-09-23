Received: (qmail 32574 invoked by uid 550); 24 Sep 2022 11:26:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9257 invoked from network); 23 Sep 2022 19:07:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=vOqL7K6R5q1WrVZFEbeAqiZqyd8JvZU1QOao+PKmnIg=;
        b=CKry1WcLfKl7YDs1iqBin420HKa2TBMN6JkPJvuwNRmVwnCbqKOrcvK38Oc1gc1NWj
         F0TuzFAdEqupdYSkDMLRdz6uNYVg0+WYaLBGOLyuFijtEpkV9kxiQ+oCDMZl1SjFb8Z6
         kAXc1iujAvoQrxTn5VIocjf/9opro4ONxj+8e6WCr1d511WWi/byGJC9wW8szkq2z6wY
         DEwYQPOxy36OvvFJfihju8D75e+VAR/CQeWNoBc8Tiynl+O13VxJasSwc5gOSiidx0w7
         D+zdRDfCjoGyG2CTTuHyqDAkdnX70P0KV0M2ClY/AxnJ8l+w+Rm8RfwnIG3NTB/DiaRH
         zz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=vOqL7K6R5q1WrVZFEbeAqiZqyd8JvZU1QOao+PKmnIg=;
        b=mbOLpF03mTmVkzzYoptVlK0Dsvq9shmYZ0Qf2Cz6bKNYB8Muxrucr23hMoIwYYkfXZ
         gEcep5XZR1Fee7WNoP/al0YlMCYSnHas5A5dRwcnCYUXVWmObIhPDALBDWGSVS/s8+QW
         PVXe18xbq0ypcMgP+O7HdykZBbj3Baz7IZtulGLCjzzsy3WLnS834KYxpgwNyrrqwD5v
         GkdC8LP456P7dvACSYZbFPwYYx4qjDP+Ew/tHN6y5SZkI4kh0BIY5MLenJPrTBklKCcH
         DFJ1esMjEDUWNMTbrpNfM7peXMlyceIl26oVymezEzk/A5X8tIzZqftM/eeQ7v0UdOus
         6PNg==
X-Gm-Message-State: ACrzQf2XYIvjJ18/VpTfWDmfZX7PSXXwxNOW2+eYiICEUu4FLhvRCY3f
	bnKDkTb3QlAMFBEg+Fyl5FBEEBr1Nro=
X-Google-Smtp-Source: AMsMyM75CH2CwsfpjNNRGXXYY10ltSJ4as0GnicZBWgnWa5Od681N2D6yHJjiryloeuK8cLc8tVDfQ==
X-Received: by 2002:a17:903:2452:b0:178:1c88:4a50 with SMTP id l18-20020a170903245200b001781c884a50mr10036400pls.113.1663960027331;
        Fri, 23 Sep 2022 12:07:07 -0700 (PDT)
Date: Fri, 23 Sep 2022 12:07:03 -0700
From: Hyunwoo Kim <imv4bel@gmail.com>
To: oss-security@lists.openwall.com
Cc: imv4bel@gmail.com
Message-ID: <20220923190703.GA364581@ubuntu>
References: <20220923190601.GA364453@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220923190601.GA364453@ubuntu>
Subject: [oss-security] Re: [Report v2] CVE-2022-41218: Linux dvb-core: UAF in
 dvb-core/dmxdev

Dear,


There was a typo in the v1 patch, so I retransmitted the corrected v2 patch.


Best Regards,
Hyunwoo Kim.
