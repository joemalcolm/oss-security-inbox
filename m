X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["396" "Sunday" "5" "February" "2017" "22:09:20" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1486328960.8813.4.camel@gmail.com>" "8" "[oss-security] Re: Irssi 1.0.0 minor remote memory leak" nil nil nil "2" "2017020521:09:20" "[oss-security] Re: Irssi 1.0.0 minor remote memory leak" (number mark "U       ailin.nemui@ Feb  5    8/396   " thread-indent "\"[oss-security] Re: Irssi 1.0.0 minor remote memory leak\"\n") "<1486328074.8813.2.camel@gmail.com>" ("<1486328074.8813.2.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21803 invoked by uid 550); 5 Feb 2017 21:13:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17503 invoked from network); 5 Feb 2017 21:09:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Z7S35ptvQ31haQNAk3lKe29a+lkODtx+MKwdamcz690=;
        b=g7oPPrjDUimv0BsXCt7veKG4HeIyhaQKuOdiav07HXdfE5lE3blfAWkWhntFCcKJbY
         wEgDY10iH9eAyU+1PUuCA8L1HfnVN3jEZzqP89IF7tjtBRts6TmtAetN2P/OloGXhRQ2
         tYhxZ4R9AK7xEAkON/o//4S/6NTce2FiFGhs1siVmWUJbgMlqACN30mB9YGRhHzSJzVx
         CUcEh9uZT8nuk0ExPl0Cn8HbMKnUhra2JgWf1ek8f911g2EWoppe9M6EXktHueN5cGgW
         pCplDxSi61Ai3geSFkGcSF39KAyo4O0GTwdT/8NRzVeUeDqqTCEivhZcptXUZvmeB9c4
         y+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z7S35ptvQ31haQNAk3lKe29a+lkODtx+MKwdamcz690=;
        b=QKb6tTGLq+wF7hS6fCFx7pV3jRS4d7cKaHBNGvNSv4uCSg3qAdgOmfxpDjt5o9rn0F
         V5Icn0mGi+QoZtk93Xkh9uXOwQqSlHbEU/+TslSJ1qQJziFg2a5InqWck1uH9SJcQue2
         O0CMx8zPBdDZlronnuOWbZ/uIOFm7chb1nEpt3Fm4jdvVcnz+n/rHgb81EfCpXQfDr7g
         nP4l9pLuirbm1Z0lyaaa+ANz5mhCTFrPRIW+++bENIf4nKTcv3z4eXQgwdSnTz1mHff+
         ioiOMgmF4hBKmzM1FpulpMZW930zCWmEgBbTUFyxHS4UEn31Un6nFao3chWauJcerow6
         3F0A==
X-Gm-Message-State: AIkVDXKkkoTgXlzE3jOtXfU1VOrcQ3DRQlsFKwoXaizdD+4RqJdkaIBT7ec061ow3CXnzg==
X-Received: by 10.223.163.30 with SMTP id c30mr6458237wrb.40.1486328962429;
        Sun, 05 Feb 2017 13:09:22 -0800 (PST)
Message-ID: <1486328960.8813.4.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Sun, 05 Feb 2017 22:09:20 +0100
In-Reply-To: <1486328074.8813.2.camel@gmail.com>
References: <1486328074.8813.2.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.4 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: Irssi 1.0.0 minor remote memory leak

On Sun, 2017-02-05 at 21:54 +0100, Ailin Nemui wrote:
> memory it wants to leak. The issue is a missing free of the base64
> data. Please advise whether that issue needs a CVE?  

Note that, a malicious server would have many ways to exhaust Irssi
resources which we see no urgency to protect against, for example by
force joining people to an endless number of channels, open many
queries etc.
