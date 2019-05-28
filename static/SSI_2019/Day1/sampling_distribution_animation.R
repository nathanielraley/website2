a<-runif(363600,1,7)
df<-data.frame(a,sample=rep(1:10100,each=36))
df2<-aggregate(a~sample,df,mean)

res <- sapply(1:10100, seq, to=1)
df<-data.frame(a=rep(df2$a,10100:1),sample=10101-rev(unlist(res)))
#df2<-aggregate(a~sample,df,mean)
#df<-cbind(df,mean_loc=rep(df2$a,each=10))


df1<-df[df$sample%in%c(1:100,seq(100,500,10),seq(500,1000,50),seq(1000,11000,100)),]
df1$above<-ifelse(df1$a>4.5,T,F)
df1<-rbind(df1,df1[df1$sample==10100,])
df1[df1$sample==10100,]$sample<-rep(c(10100,10200),each=10100)

library(gganimate)


################ Frequency

p<-ggplot(df1,aes(x=a, group=sample,frame=sample)) +
  geom_histogram(position="identity",bins=30) +
 # geom_vline(aes(xintercept=mean_loc,frame = sample),color="red")+
#  scale_x_continuous(breaks=seq(1,10,1))+
#  scale_y_continuous(limits=c(0,200))+
#stat_function(fun = dnorm, args = list(mean = mean(df$a), sd = sd(df$a)))+
  theme_classic()+
  transition_states(
    sample,
    transition_length = 0,
    state_length = 1
  )+
  labs(title = 'Sample: {closest_state}')+view_follow()
#+enter_fade() + 
#  exit_shrink() +
#  ease_aes('sine-in-out')

animate(p, nframes=246, renderer = gifski_renderer(loop = FALSE))


ggplot(df1[df1$sample==9700,],aes(x=a)) +
  geom_histogram(aes(y=..density..),position="identity",bins=40) + 
  # geom_vline(aes(xintercept=mean_loc,frame = sample),color="red")+
  scale_x_continuous(breaks=seq(1,7,.5),labels=c(rep("",4),3,"",4,"",5,rep("",4)))+
  xlab("Rating")+
  #  scale_y_continuous(limits=c(0,200))+
  stat_function(fun = dnorm, args = list(mean = mean(df1$a), sd = sd(df1$a)),color="orange",size=2)+
  theme_classic()+theme(axis.title.y=element_blank(),
                        axis.text.y=element_blank(),
                        axis.ticks.y=element_blank())
  

############# Density

p<-ggplot(df1,aes(x=a, group=sample,frame=sample)) +
  geom_histogram(position="identity",aes(y=..density..),bins=43) +
  # geom_vline(aes(xintercept=mean_loc,frame = sample),color="red")+
  scale_x_continuous(breaks=seq(1,7,.5),labels=c(rep("",4),3,"",4,"",5,rep("",4)))+
  xlab("Mean of n=36 Ratings")+
  #  scale_y_continuous(limits=c(0,200))+
stat_function(fun = dnorm, args = list(mean = mean(df1$a), sd = sd(df1$a)),color="orange",size=2)+
#  geom_density(color="green",size=1)+
  theme_classic()+theme(axis.title.y=element_blank(),
                         axis.text.y=element_blank(),
                         axis.ticks.y=element_blank())+
  transition_states(
    sample,
    transition_length = 0,
    state_length = 1
  )+
  labs(title = 'Sample means: {closest_state}')+view_follow()
#+enter_fade() + 
#  exit_shrink() +
#  ease_aes('sine-in-out')

anim1<-animate(p, nframes=255, renderer = gifski_renderer(loop = FALSE),)

anim_save(anim1,filename="sampling_distin.gif")


ggplot(df1[df1$sample==10000,],aes(x=a)) +
  geom_histogram(aes(y=..density..),position="identity",bins=43)+ 
  # geom_vline(aes(xintercept=mean_loc,frame = sample),color="red")+
  scale_x_continuous(breaks=seq(1,7,.5),labels=c(rep("",4),3,"",4,"",5,rep("",4)))+
  xlab("Mean of n=36 Ratings")+
  #  scale_y_continuous(limits=c(0,200))+
  stat_function(fun = dnorm, args = list(mean = mean(df1$a), sd = sd(df1$a)),color="orange",size=2)+
  theme_classic()+theme(axis.title.y=element_blank(),
                        axis.text.y=element_blank(),
                        axis.ticks.y=element_blank())+
  labs(title="Sampling distribution if true mean = 4")+
  annotate("text",label="x",x = 5,y=.02,col="red",size=10)

