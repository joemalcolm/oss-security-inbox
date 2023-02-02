Received: (qmail 7530 invoked by uid 550); 2 Feb 2023 19:52:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6095 invoked from network); 2 Feb 2023 19:06:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=61E2vJN1wPCx5qeBgvNon6AsESP4cuBp/6gsipfaKq4=;
        b=nqH2ESTgshPBLziDsv7c2p9afgaMgpxGGbERRcgDP4NKatTxHhVzoaeEMGZSsk2Lx3
         Mj9jq5lvjga3uUf9FmajJz20W8M+4ZQnZwDkPiir6Ivz29rB5C6Jhlg9KfbtG4vObHzb
         r6l0y00DKD38nq4UcqimuJBYw+CvMbAk/f+g4cvMjoIzI6wGkruO3BowBcEp8QVJBsae
         w3GO/m5XgvZO9f844Uh4XaOCF6Ef8T7ZqR3CAbdLvPpRHiA1tloADb8ZRV+QXQUpeTw5
         +ajdFdfV4usllnn4xWJmYS4+gh1zTJmgY0tgHRqsD9MRdVJKJBjcH7oEIt0Kdy20y+OC
         yhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=61E2vJN1wPCx5qeBgvNon6AsESP4cuBp/6gsipfaKq4=;
        b=28m6XFbSCrPh8Pcr8ktGPwXdt8JOZy2/QbabK4P9r3GpLCMDL6vELhRmOiw1AYZVGW
         dSO34zoQPrd+K2MnGC9wtcva8IelZiInpRq/pJSCsxlfXBWZfy2MnUYQarXI5nF6rPpn
         ZYyaF2uzHOej0FiU8iX2HbF5O6Ei7kQzpp9vGUnDfo2tZJIU8xu9FH2MZ0I6wsGmqBPb
         /ainTZJ/TsRTqQs31COp6Lv5/d45UAEPZiAofeUR+pmT2QqkAw6gAqNr8+HPFcs5HnmV
         8VoTNAmLMCna4n8qeYO90cwJATdA/PHLwifYapBqupHjCI+U+rJbIag+aH/vuOfUSdrk
         1nZQ==
X-Gm-Message-State: AO0yUKWdeFggJJ1yslge7sQxOt0cOwydQ7HYKuEOpGRUsyVXbWkmw6nQ
	1a+RdI0Dsqjk6AJO36sklORGrMCJ2EqSOzAc0so+i8rdo411og==
X-Google-Smtp-Source: AK7set/xtMYqQlSF/TGoFaw4o2oI33rex3sVQ9S7ey8C8ZPQuurTT193FXcO4EUoBc243KiqUn2S+eblWhqDKFXQp5E=
X-Received: by 2002:a17:90a:2dca:b0:230:d3b:1b5 with SMTP id
 q10-20020a17090a2dca00b002300d3b01b5mr585191pjm.37.1675364798411; Thu, 02 Feb
 2023 11:06:38 -0800 (PST)
MIME-Version: 1.0
References: <20230202130212.GA15689@localhost.localdomain>
In-Reply-To: <20230202130212.GA15689@localhost.localdomain>
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 2 Feb 2023 21:06:19 +0200
Message-ID: <CAGUWgD92EyHBNQLt3eGoEq2mBkaoWS2AGLN1dFE2JFw+6kMv8w@mail.gmail.com>
To: oss-security@lists.openwall.com, Qualys Security Advisory <qsa@qualys.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] double-free vulnerability in OpenSSH server 9.1

Nice find :)
This is very complicated codepath, did a human found it "manually"
or some analysis program found it?
The warez are so large, they are hard for me manually.
