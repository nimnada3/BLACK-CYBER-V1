FROM quay.io/inrlwabot/inrl:latest
RUN git clone https://github.com/BLACK-HAT-TEAM/BLACK-CYBER-V1 /root/BLACK-HAT-TEAM
WORKDIR /root/BLACK-HAT-TEAM/
RUN yarn install --network-concurrency 1
EXPOSE 8000
CMD ["npm", "start"]
