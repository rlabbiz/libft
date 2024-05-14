/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlabbiz <rlabbiz@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/10 08:31:11 by rlabbiz           #+#    #+#             */
/*   Updated: 2022/10/17 11:17:11 by rlabbiz          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*new_mode;

	new_mode = malloc(sizeof(t_list));
	if (!new_mode)
		return (NULL);
	new_mode->content = content;
	new_mode->next = NULL;
	return (new_mode);
}
