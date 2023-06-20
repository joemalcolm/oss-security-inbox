Received: (qmail 32574 invoked by uid 550); 20 Jun 2023 16:41:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19547 invoked from network); 20 Jun 2023 16:24:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687278261; x=1689870261;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4SrYdHEzhjm3WjRN7SFXCjZ8ZGQ1Zz5TSD+ITgvb9yQ=;
        b=oH3s4a1tSRzGtYPOJHwnCefLS/rkhnFmVScMg0HPrxfWrMdocnfSMBGOTbv19DM/fR
         JlfGstQfCeIEVgzeSSff0d0hW2AnwBI3ZtgYrGYwr/uSAgpgviblektElktBonwFYVbB
         BcJoFY+dJR0MfjWW1aksU+awQr/zY5mfJAKVZKWqv1LYqaPT+Gl2zQtBl1GGCkmPTBDd
         L8PCth8sKIdJvJ9MkZXp6QnlOyENuNswBb2s89aAsh2rKv4sKEkhbm2Gifh/agdDo2KH
         i8Jlu5iV1n3BBkXKkLwHBcrgxzF8Nhnjvz2pEbUE2CgenJcy07JSz8/otCH4tMR+j0iH
         ttjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687278261; x=1689870261;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4SrYdHEzhjm3WjRN7SFXCjZ8ZGQ1Zz5TSD+ITgvb9yQ=;
        b=bGdcifND1gQBeEkZlDqvpyo9jEnc6HpDb5XFqsYErCmWxpdtw9i3vyJ0vBBBCY2k8u
         QGSyToLWFc7vVckpZw3480JNVEa34pwT6dMdROJAWwaE4aKSDqFmPpxX/IhLF+bIkURM
         XZAg6w2I50/b9gs7Y4Cb6r3uUXxNX2fbJ7+NfOrQQwXPE8g2CioigMBE1qm6e877ZF9J
         YP6ZztkFk9b4mRQ7ATu+lKzUpnlLMqpQQteKDUcO7SltcIjqhyoz4LrhFCAIjB12CYvq
         YI31wX86TNqtP2fcrFUoeUihd47WjnUTa2pc8Ygqn+haNP8L+Wq6FEZTWAyAC/qtjspv
         /P/w==
X-Gm-Message-State: AC+VfDxD1+8UwRjgiQMaFsqAMz60vnotI4nWgyKM3fLDTUt8JzmonJax
	N9z4nei8QDkKvp4uJhN3rZgtrMSFhg7aMyljdCexbWa4qig=
X-Google-Smtp-Source: ACHHUZ4/Joy6Moiq1VPZz6FP1eN+vzknejMWX44Jo2WzX4xGm/8/frDMRJz6lvvQQqT0UPWiAx5p5ShP/FGWYQqn4/A=
X-Received: by 2002:a17:903:455:b0:1b5:1fbb:964a with SMTP id
 iw21-20020a170903045500b001b51fbb964amr6846713plb.3.1687278260977; Tue, 20
 Jun 2023 09:24:20 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 20 Jun 2023 19:22:25 +0300
Message-ID: <CAGUWgD--HN6u3k6ofV07UPo3Bh=HyNRngUV2yz9OkzD5t9m3=A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] The AI chatgpt writes insecure code

chatgpt is an AI language model and it can write code.

As expected, it was trained on insecure code and it writes
insecure code.

https://chat.openai.com/chat

Here is a textbook example of XSS.

GG:
Hi bot :)
Write a python cgi script which takes as input text field NAME and
return html "Hello NAME"

Slightly skipped:

AI:

import cgi

# Create instance of FieldStorage
form = cgi.FieldStorage()

# Get value from the 'NAME' field
name = form.getvalue('NAME')

# Start the HTML response
print("Content-type: text/html\n")
print("<h1>Hello, {}</h1>".format(name))

end of session.

When the robots take over the real world, hacking the robots will
be powerful :)

-- 
guninski:  https://j.ludost.net/resumegg.pdf
