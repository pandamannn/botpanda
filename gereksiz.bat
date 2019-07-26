client.on('message', msg => {
  if (msg.content.toLowerCase() === 'sa') {
    msg.reply('ase');
  }
});

client.login('NTk0MTIwNjQ4NzI1NjI2OTE3.XRX0_A.NLG6ZWKU1-Knc_jOJaqjR6R-IdA');

client.on('message', msg => {
  if (msg.content.toLowerCase() === 'naber') {
    msg.reply('iyi senden');
  }
});

client.on('message', msg => {
  if (msg.content.toLowerCase() === 'nasılsın') {
    msg.reply('iyiyim sen');
  }
});

client.on('message', msg => {
  if (msg.content.toLowerCase() === 'napıyorsun') {
    msg.reply('seni hiç alakadar etmez');
  }
});

client.on('message', msg => {
  if (msg.content.toLowerCase() === '!instagram') {
    msg.channel.sendMessage('https://instagram.com/oguzhan.sevimlii');
  }
});


client.on('message', message => {
  // Ignore messages that aren't from a guild
  if (!message.guild) return;

  // If the message content starts with "!kick"
  if (message.content.startsWith('!kick')) {
    // Assuming we mention someone in the message, this will return the user
    // Read more about mentions over at https://discord.js.org/#/docs/main/stable/class/MessageMentions
    const user = message.mentions.users.first();
    // If we have a user mentioned
    if (user) {
      // Now we get the member from the user
      const member = message.guild.member(user);
      // If the member is in the guild
      if (member) {
        /**
         * Kick the member
         * Make sure you run this on a member, not a user!
         * There are big differences between a user and a member
         */
        member.kick('Optional reason that will display in the audit logs').then(() => {
          // We let the message author know we were able to kick the person
          message.reply(`Tekmeyi Bastın ${user.tag}`);
        }).catch(err => {
          // An error happened
          // This is generally due to the bot not being able to kick the member,
          // either due to missing permissions or role hierarchy
          message.reply('Oh wait Tekmeyi basamadık!');
          // Log the error
          console.error(err);
        });
      } else {
        // The mentioned user isn't in this guild
        message.reply('Bu kullanıcı sunucuda değil!');
      }
    // Otherwise, if no user was mentioned
    } else {
      message.reply('adını yaz adını ');
    }
  }
});


client.on('message', message => {
  // Ignore messages that aren't from a guild
  if (!message.guild) return;

  // if the message content starts with "!ban"
  if (message.content.startsWith('!ban')) {
    // Assuming we mention someone in the message, this will return the user
    // Read more about mentions over at https://discord.js.org/#/docs/main/stable/class/MessageMentions
    const user = message.mentions.users.first();
    // If we have a user mentioned
    if (user) {
      // Now we get the member from the user
      const member = message.guild.member(user);
      // If the member is in the guild
      if (member) {
        /**
         * Ban the member
         * Make sure you run this on a member, not a user!
         * There are big differences between a user and a member
         * Read more about what ban options there are over at
         * https://discord.js.org/#/docs/main/stable/class/GuildMember?scrollTo=ban
         */
        member.ban({
          reason: 'They were bad!',
        }).then(() => {
          // We let the message author know we were able to ban the person
          message.reply(`Hadi siktir git ${user.tag}`);
        }).catch(err => {
          // An error happened
          // This is generally due to the bot not being able to ban the member,
          // either due to missing permissions or role hierarchy
          message.reply('Oh wait Bu galiba admin!');
          // Log the error
          console.error(err);
        });
      } else {
        // The mentioned user isn't in this guild
        message.reply('Bu kullanıcı sunucuda değil!');
      }
    } else {
    // Otherwise, if no user was mentioned
      message.reply('adı lazım bize');
    }
  }
});
