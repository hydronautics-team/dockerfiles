FROM sauvc:latest

#
# setup entrypoint
#
COPY ./packages/autobuild_sauvc_entrypoint.sh /autobuild_sauvc_entrypoint.sh
RUN echo 'source /ws/additional_packages_ws/devel/setup.bash' >> /root/.bashrc
RUN echo 'source /sauvc/devel/setup.bash' >> /root/.bashrc
ENTRYPOINT ["/autobuild_sauvc_entrypoint.sh"]
CMD ["bash"]
WORKDIR /